Feature: Home page
  In order to read the Home page
  As a viewer
  I want to see the home page of my app
  also navigating to Outgoing Mail
  and back to Home page

Scenario: Visiting Home and Outgoing Mail page
  Given I am visiting Home page
  Then I should see "Home" header
  And I should see "Welcome to Dodi home page."
  And I should see "Outgoing Mail" link
  Then I click "Outgoing Mail" link
  And I should see "Outgoing Mails List"