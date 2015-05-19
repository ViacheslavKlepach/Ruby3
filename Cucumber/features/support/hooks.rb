require 'selenium-webdriver'

Before do
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.timeouts.implicit_wait = 10
end

After do
  @browser.close
end