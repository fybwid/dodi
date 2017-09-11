Feature: Home page
  In order to read the Home page
  As a viewer
  I want to see the home page of my app
  I want to Sign up, Sign in, and Log out
  also navigating to Outgoing Mail and Incoming Mail
  and back to Home page

Scenario: Visiting Home page
  Given I am visiting Home page
  Then I should see "Home" header
  Then I should see "Welcome to Dodi home page"
  
Scenario: Visiting Sign up page
  Given I am visiting Sign up page
  Then I should see "Sign up" header
  And I should see "Email"
  And I should see "Password"
  And I should see "(6 characters minimum)"
  And I should see "Password confirmation"
  And I should see "Password"
  And I should see "Sign up" button
  And I should see "Log in" link

Scenario: Visiting Sign in page
  Given I am visiting Sign in page
  Then I should see "Log in" header
  And I should see "Email"
  And I should see "Password"
  And I should see "Remember me"
  And I should see "Log in" button
  And I should see "Sign up" link
  And I should see "Forgot your password?" link

Scenario: Visiting Home as unregistered user and Sign up
  Given I am visiting Home page as unregistered user and Sign up

Scenario: Visiting Home as registered user and Sign in
  Given I am visiting Home page as registered user and Sign in