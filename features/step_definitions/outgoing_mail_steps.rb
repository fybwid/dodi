Given(/^I am visiting Outgoing Mail page$/) do
  visit "/outgoing_mails"
end

And(/^I shouldn't see "(.*?)" link$/) do |text|
  page.has_content?(text)
end

Then(/^I fill the title with Outgoing Mail Title$/) do
  fill_in 'Title', with: 'Title Title Title'
end

Then(/^I fill the description with Outgoing Mail Description$/) do
  fill_in 'Description', with: 'Description Description Description'
end