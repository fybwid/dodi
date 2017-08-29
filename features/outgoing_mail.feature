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