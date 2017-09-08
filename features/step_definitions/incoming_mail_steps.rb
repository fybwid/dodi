require 'rails_helper'

Given(/^I am visiting Incoming Mail page as registered user and Log in$/) do
  visit incoming_mails_path
  puts "I am on Incoming Mails page"
  
  expect(page).to have_link 'Sign up'
  puts "I can find Sign up Link"
  expect(page).to have_link 'Forgot your password?'
  puts "I can find Forgot your password? Link"

  within("#new_user") do
    puts "I am seeing Log in form"
    fill_in 'Email',
      with: 'test@dodi.com'
    puts "I have filled Email field"
    fill_in 'Password',
      with: 'password'
    puts "I have filled Password field"
    click_button 'Log in'
    puts "I am clicking Log in link"
  end
end

Given(/^I am creating New Incoming Mail/) do
  session.visit(incoming_mails_path)
  expect(page).to have_current_path(incoming_mails_path, only_path: true)
  puts "I am on Incoming Mail page"
  expect(page).to have_current_path(new_incoming_mail_path, only_path: true)
  puts "I am on New Incoming Mail page"
  expect(page).to have_link 'Title'
  puts "I can see Title"
  expect(page).to have_content 'Description'
  puts "I can see Description"
  expect(page).to have_button 'Save Outgoing mail'
  puts "I can see Save Incoming mail button"
  expect(page).to have_link 'Back'
  puts "I can see Back link"
end

Then(/^I am at Incoming Mail page$/) do
  visit "/incoming_mails"
end

Then(/^I fill the title with Incoming Mail Title$/) do
  fill_in 'Title', with: 'Title Title Title'
end

Then(/^I fill the description with Incoming Mail Description$/) do
  fill_in 'Description', with: 'Description Description Description'
end