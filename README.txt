= merb_bot_test

http://rubyforge.org/projects/sintaxi/

== DESCRIPTION:

Stops spam with a math test

== FEATURES/PROBLEMS:

stops spam by adding a simple math questions to a form

== SYNOPSIS:

#init.rb
  
  Merb::BootLoader.before_app_loads do
    require "merb_bot_test"
  end
  
#in your model

  merb_bot_test
  
#in your form (this eg uses @article model)

  <%= text_control :response, :label => "whats #{@article.n1} + #{@article.n2} ?" %>
  <%= hidden_control :answer_key, :value => @article.key %>


== REQUIREMENTS:

* none

== INSTALL:

* sudo gem install merb_bot_test

== LICENSE:

(The MIT License)

Copyright (c) Brock Whitten 2008

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
