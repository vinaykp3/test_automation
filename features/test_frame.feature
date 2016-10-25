Feature: Test the automation custom framework
	
	# Scenario: Visit the url
	# Given I visit the home page

	Scenario: Search for a term.
		Given I have entered "watir" into the query.
		When I click "search"
		Then I should see some results