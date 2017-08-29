Feature: Home
  In order to read the page
  As a viewer
  I want to see the home page of my app
  
  Background:
    Given I am on the homepage

	Scenario: Check Home content
  	Then I should see "Dodi"
   	And I should see "Welcome to Dodi home page."

  Scenario: Navigate to Outgoing Mail
    Then I should see "Outgoing Mails List" link
    When I click "Outgoing Mail" link
    Then I should see "Outgoing Mails List"