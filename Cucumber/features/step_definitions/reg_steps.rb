Given(/^The page "([^"]*)" is opened$/) do |page|
  @browser.get page
end

When(/^I click "([^"]*)" link$/) do |link|
  @browser.find_element(class: link).click
end

Then(/^The "([^"]*)" page should be displayed$/) do |page|
  expect(@browser.current_url).to include page
end

When(/^I submit a request with required "([^"]*)", "([^"]*)" to create a new user$/) do |username,password|
  @browser.find_element(id: 'user_login').send_keys username
  @browser.find_element(id: 'user_password').send_keys password
  @browser.find_element(id: 'user_password_confirmation').send_keys password
  @browser.find_element(id: 'user_firstname').send_keys "#{username}_firstname"
  @browser.find_element(id: 'user_lastname').send_keys "#{username}_lastname"
  @browser.find_element(id: 'user_mail').send_keys "#{username}@i.ua"
  @browser.find_element(name: 'commit').click
end

Then(/^a new "([^"]*)" should be created$/) do |user|
  expect(@browser.find_element(xpath: ".//*[@id='loggedas']/a").text).to eq(user.to_s)
end