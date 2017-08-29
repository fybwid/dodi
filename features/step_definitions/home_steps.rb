Given(/^I am on the home page$/) do
  visit "/"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

When 'I click "Outgoing Mail" link' do
  click_link 'Outgoing Mail'
end