require 'selenium-webdriver'
require 'page-object'
require 'rspec'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before :all do
    @browser=Selenium::WebDriver.for :firefox
  end

  config.after :all do
    @browser.close
  end

end