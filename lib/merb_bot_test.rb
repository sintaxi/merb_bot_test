class MerbBotTest
  VERSION = '0.1.0'
end

module Sintaxi
  module MerbBotTest
        
    def self.included(base)
      base.extend ActMethods
    end

    module ActMethods
      def merb_bot_test(unique_key)
        unless included_modules.include? InstanceMethods
          include InstanceMethods
          class_inheritable_accessor :site_key
          attr_accessor :response, :answer_key
        end
        self.site_key ||= unique_key ||= 45287
      end
    end

    module InstanceMethods
      
      def n1
        @n1 ||= rand(20)
      end

      def n2
        @n2 ||= rand(9)
      end

      def key
        encrypt_number(n1 + n2)
      end
      
    protected
      def validate
        errors.add("Failed bot test.", "Are you sure you are human?") if spam?
      end
      
    private
      def spam?
        encrypt_number(self.response.to_i) != self.answer_key
      end

      def encrypt_number number
        ((number + site_key) * 7).to_s(5)
      end
    end
    
  end
end

ActiveRecord::Base.send :include, Sintaxi::MerbBotTest if defined?(ActiveRecord::Base)