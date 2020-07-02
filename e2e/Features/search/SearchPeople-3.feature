Feature: Search with an artist who did not feature in star wars
In order to gather more information on my favourite starwars characters
As a user who is a Star Wars enthusiast  
I want the application to serve me the information

Background: 
Given I open the url "/"
And I am on the landing page of the site
   
Scenario: When you search for a character and it’s not a valid one, then you should be able to see "Not found" in the results.
Scenario Outline: Perform Search with a Character name that did not feature in Star Wars

    Given I choose the People option on the page 
    When I set a `characterInvalidName` in the input field
    Then I see a Not Found message
	
	Examples:
      | characterInvalidName | 
      | TnT |