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
  
Scenario: Create and view Incoming Mail
  Given I am visiting Incoming Mail page
  Then I click "New Incoming Mail" link
  And I should see "New Incoming Mail" header
  And I should see "Title"
  And I should see "Description"
  Then I fill the title with Incoming Mail Title
  Then I fill the description with Incoming Mail Description
  And I press "Save Incoming mail" button
  Then I should see "Incoming mail was successfully created."
  And I should see "Edit" link
  And I should see "Back" link