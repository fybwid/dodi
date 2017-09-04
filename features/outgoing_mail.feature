Feature: Outgoing Mail page
  In order to read the Outgoing Mail page
  As a viewer
  I want to see the Outgoing Mail page of my app
  also navigating to Home page
  and back to Outgoing Mail page

Scenario: Visiting Outgoing Mail and Home page
  Given I am visiting Outgoing Mail page
  Then I should see "Outgoing Mail List" header
  And I shouldn't see "Show" link
  And I shouldn't see "Edit" link
  And I shouldn't see "Destroy" link
  And I should see "New Outgoing Mail" link
  And I should see "Back to Home" link

Scenario: Create and view Outgoing Mail
  Given I am visiting Outgoing Mail page
  Then I click "New Outgoing Mail" link
  And I should see "New Outgoing Mail" header
  And I should see "Title"
  And I should see "Description"
  Then I fill the title with Outgoing Mail Title
  Then I fill the description with Outgoing Mail Description
  And I press "Save Outgoing mail" button
  Then I should see "Outgoing mail was successfully created."
  And I should see "Edit" link
  And I should see "Back" link