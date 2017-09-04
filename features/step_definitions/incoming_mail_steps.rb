Given(/^I am visiting Incoming Mail page$/) do
  visit "/incoming_mails"
end

Then(/^I fill the title with Incoming Mail Title$/) do
  fill_in 'Title', with: 'Title Title Title'
end

Then(/^I fill the description with Incoming Mail Description$/) do
  fill_in 'Description', with: 'Description Description Description'
end