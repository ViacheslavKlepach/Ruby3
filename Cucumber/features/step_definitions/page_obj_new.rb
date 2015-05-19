require_relative '../pages/login_page_new'
require_relative '../pages/home_page'

Given(/^The login page is opened new$/) do
  visit LoginPageNew
end

When(/^I submit! "([^"]*)", "([^"]*)"$/) do |username,password|
  #@current_page.login_as(username,password)
  on(LoginPageNew).login_as(username,password)
end

Then(/^it works! "([^"]*)"$/) do |username|
  expect(on(HomePage).loggedas_element.text).to include username
end