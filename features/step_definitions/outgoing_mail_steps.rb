Given(/^I am visiting Outgoing Mail page$/) do
  visit "/outgoing_mails"
end

And(/^I shouldn't see "(.*?)" link$/) do |text|
  page.has_content?(text)
end