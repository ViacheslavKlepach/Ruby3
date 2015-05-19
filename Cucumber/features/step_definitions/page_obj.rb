require_relative '../pages/login_page'


Given(/^The login page is opened$/) do
  @browser.get 'http://demo.redmine.org/login'
end

When(/^I submit "([^"]*)"$/) do |arg1|
  @login_page = LoginPage.new(@browser)
  #@login_page.username =arg1 # just a test
end

Then(/^it works "([^"]*)", "([^"]*)"$/) do |arg1,arg2|
  @login_page.login_as(arg1,arg2)
end