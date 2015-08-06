Feature: Geocoder 

	Scenario: Create Task with Address 
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task in San Francisco
			Then I should see a static map
			
	Scenario: Verify tasks created 
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task in San Francisco
			And I press "Back"
			And I press "New Task" 
			And I create a random task in Philadelphia
			And I press "Back"
			Then table should have 3 entries
				
	Scenario: Search for non-existing tasks
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task in San Francisco
			And I press "Back"
			And I fill in "search" with "Philadelphia"
			And I press "Search City"
			Then table should have 1 entries
			
	Scenario: Search for existing tasks 
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task in San Francisco
			And I press "Back"
			And I press "New Task" 
			And I create a random task in Philadelphia
			And I press "Back"
			And I fill in "search" with "Philadelphia"
			And I press "Search City"
			Then table should have 2 entries
		
			
			