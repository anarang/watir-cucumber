Feature: To allow the users to search for free text
  Scenario: Search for keyword 'echo'
    Given that I am on the home page 
    When I search for 'echo'
    Then I should see keyword 'echo' highlighted in the search results
