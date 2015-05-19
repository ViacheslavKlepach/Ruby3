
When(/^I input valid "([^"]*)" to the "([^"]*)" text\-box$/) do |argument,field|
  @browser.find_element(id: field).send_keys argument
end

And(/^I click "([^"]*)" button$/) do |button|
  @browser.find_element(name: button).click
end

Then(/^The "([^"]*)" link should be available$/) do |page|
  expect(@browser.find_element(class: page).displayed?).to be true
end