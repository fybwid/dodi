Feature: Incoming Mail page
  As a registered user,
  I want to see the Incoming Mail List
  Create new Incoming Mail,
  also navigating to Home page,
  and back to Incoming Mail page

Scenario: Visiting Incoming Mail and Log in
  Given I am visiting Incoming Mail page as registered user and Log in
  #Then I should see "Signed in successfully." notice
  Then I should see "Home" header
  Then I should see "Welcome to Dodi home page"
  Then I should see "Outgoing Mail" link
  Then I should see "Incoming Mail" link

Scenario: Create and view Incoming Mail
  Given I am visiting Incoming Mail page as registered user and Log in
  Then I should see "Signed in successfully."
  Then I should see "Incoming Mails List"
  Then I should see "New Incoming Mail"
  Then I should see "Back to Home"
  Given I am creating New Incoming Mail page