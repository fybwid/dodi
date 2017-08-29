Given(/^I am visiting Home page$/) do
  visit "/"
end

Then(/^I should see "(.*?)" header$/) do |text|
  page.has_content?(text)
end

And(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

And(/^I should see "(.*?)" link$/) do |text|
  find_link(text).visible?
end

Given(/^I am on Home page$/) do
  visit "/"
end

Then(/^I click "(.*?)" link$/) do |text|
  click_link(text)
end