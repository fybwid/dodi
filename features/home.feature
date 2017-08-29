Feature: Home
  In order to read the page
  As a viewer
  I want to see the home page of my app

	Scenario: View home page
  		Given I am on the home page
  		Then I should see "Dodi"
   		And I should see "Welcome to Dodi home page."