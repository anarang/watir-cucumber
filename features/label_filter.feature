@filter_labels
Feature: To allow the users to filter the packages using left facet
	
	Background:
	Given that I am on the home page

	Scenario: Verify if filter works correctly for Label 1
	When I select filter 'Label 1' from the left facet
	Then I should see all the 'Label 1' Placeholders on the page

	Scenario: Verify if filter works for Label 2
	When I select the filter Label 2 form the left facet
	Then I should see all placeholders from Label 2 on the page
