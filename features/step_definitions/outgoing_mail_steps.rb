Given(/^I am at Outgoing Mail page$/) do
  visit outgoing_mails_path
  puts "I am on Outgoing Mails page"
end

Given(/^I am visiting Outgoing Mail page$/) do
  visit outgoing_mails_path
  puts "I am on Outgoing Mails page"
end

Given(/^I am visiting Outgoing Mail page as registered user and Log in$/) do
  visit outgoing_mails_path
  puts "I am on Outgoing Mails page"
  
  expect(page).to have_link 'Sign up'
  puts "I can find Sign up Link"
  expect(page).to have_link 'Forgot your password?'
  puts "I can find Forgot your password? Link"

  within("#new_user") do
    puts "I am seeing Log in form"
    find("#user_remember_me")
    puts "I can find Remember Me checkbox"
    expect(page).to have_button 'Log in'
    puts "I can find Log in Button"
    fill_in 'Email',
      with: 'test@dodi.com'
    puts "I have filled Email field"
    fill_in 'Password',
      with: 'password'
    puts "I have filled Password field"
    click_button 'Log in'
    puts "I am clicking Log in link"
  end
  #Check curreny URL
  #expect(current_path).to eql(outgoing_mails_path)
  #puts "I am redirected to Outgoing Mails page"
end

Then(/^I am creating New Outgoing Mail$/) do
  page.find_link('New Outgoing Mail')
  puts "I can see New Outgoing Mail link"
  expect(page).to have_link 'Back to Home'
  puts "I can see Back to Home link"
  click_link 'New Outgoing Mail'
  puts "I am clicking New Outgoing Mail"
  visit "/outgoing_mails/new"
  puts "I am at New Outgoing Mail page"
  expect(page).to have_link 'Title'
  puts "I can see Title"
  expect(page).to have_content 'Description'
  puts "I can see Description"
  expect(page).to have_button 'Save Outgoing mail'
  puts "I can see Save Outgoing mail button"
  expect(page).to have_link 'Back'
  puts "I can see Back link"
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