Feature: Incoming Mail page
  In order to read the Incoming Mail page
  As a viewer
  I want to see the Incoming Mail page of my app
  also navigating to Home page
  and back to Incoming Mail page

Scenario: Visiting Incoming Mail and Home page
  Given I am visiting Incoming Mail page
  Then I should see "Incoming Mails List" header
  And I shouldn't see "Show" link
  And I shouldn't see "Edit" link
  And I shouldn't see "Destroy" link
  And I should see "New Incoming Mail" link
  And I should see "Back to Home" link