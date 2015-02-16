#Controller Testing

##Topics
* RSpec Config Review
  * ``rspec`` 
  * ``spec/spec_helper.rb``
  * ``.rspec``
* Simplest Controller Test
  * ``Rack::Test``
  * ``config.include Rack::Test::Methods``
  * ``be_ok``
* Setting Up Data
  * ``let`` and ``let!``
  * ``context``
  * ``FactoryGirl``
    * ``FactoryGirl.define factory`` 
    * ``FactoryGirl.define sequence`` 
* Cleaning Up!
  * ``DatabaseCleaner``
* HTML Matchers 
  * ``config.include RSpec::HtmlMatchers``
  * ``has_tag``
* Session Data
  * ``{ 'rack.session' => {:auth_user_id => user.id }}``
* Capybara
  * ``require 'capybara/rspec'``
  * [jnicklas/capybara](https://github.com/jnicklas/capybara)

# Review
* RSpec config
* Rack::Test
* let and let!
* FactoryGirl
* DatabaseCleaner
* HtmlMatchers
* Session Data
* Capybara
 


