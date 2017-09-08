Given(/^I am visiting Home page$/) do
  visit "/"
end

Given(/^I am visiting Sign up page$/) do
  visit "/users/sign_up/"
end

Given(/^I am visiting Sign in page$/) do
  visit "/users/sign_in/"
end

Then(/^I should see "(.*?)" header$/) do |text|
  page.has_content?(text)
end

Then(/^I should see "(.*?)" notice/) do |text|
  #expect(page).to have_selector ".notice", text: text
  #page.find('p', :text => text)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

Then(/^I should see "(.*?)" link$/) do |text|
  has_link?(text)
end

Then(/^I should see "(.*?)" button/) do |text|
  expect(page).to have_button(text)
end

Given(/^I am on Home page$/) do
  visit "/"
end

Then(/^I click "(.*?)" link$/) do |text|
  click_link text
end

And(/^I press "(.*?)" button$/) do |text|
  click_button(text)
end

Given(/^I am visiting Home page as unregistered user and Sign up$/) do
  visit "/"
  puts "I am on Home page"
  
  click_on('Sign up')
  puts "I am clicking Sign up"
  
  visit "/users/sign_up/"
  puts "I am on Sign up page"
  
  within("#new_user") do
    puts "I am seeing Sign up form"
    fill_in 'Email',
      with: 'test@dodi.com'
    puts "I have filled Email field"
    fill_in 'Password',
      with: 'password'
    puts "I have filled Password field"
    fill_in 'Password confirmation',
      with: 'password'
    puts "I have filled Password confirmation field"
  end
  
  expect(page).to have_button 'Sign up'
  puts "I can find Sign up Button"
  click_button 'Sign up'
  puts "I am able to Sign up"
  
  #expect(page).to have_current_path(home_index_path, only_path: true)
  expect(page).to have_content 'Home'
  puts "I can see Home header"
  expect(page).to have_content 'Welcome to Dodi home page.'
  puts "I can see Welcome to Dodi home page."
  #expect(page).to have_link 'Sign out'
  #expect(page).to have_link 'Outgoing Mail'
  #expect(page).to have_link 'Incoming Mail'
end

Given(/^I am visiting Home page as registered user and Sign in$/) do
  visit "/"
  puts "I am on Home page"
  
  click_on('Sign in')
  puts "I am clicking Sign in"
  
  visit "/users/sign_in/"
  puts "I am on Sign in page"
  
  within("#new_user") do
    puts "I am seeing Sign in form"
    fill_in 'Email',
      with: 'test@dodi.com'
    puts "I have filled Email field"
    fill_in 'Password',
      with: 'password'
    puts "I have filled Password field"
  end
  
  find("#user_remember_me")
  puts "I can find Remember Me checkbox"
  expect(page).to have_button 'Log in'
  puts "I can find Log in Button"
  click_button 'Log in'
  puts "I am able to Log in"
  
  #expect(page).to have_content 'Home'
  #puts "I can see Home header"
  #expect(page).to have_content 'Welcome to Dodi home page.'
  #puts "I can see Welcome to Dodi home page."
end
