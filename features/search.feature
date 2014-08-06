@search
Feature: To allow the users to search for free text
  Scenario Outline: Search for keyword 'echo' and 'print'
    Given that I am on the home page 
    When I search for <search query>
    Then I should see keyword <search query> highlighted in the search results
    Examples:
    |search query   |
    |echo	     	|
    |print 			|