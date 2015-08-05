Feature: Manage Tasks 

		Scenario: Create Tasks 
			Given a logged in user
			When I create a new task
			And I fill in "Description" with "Clean Room" 
			And  I choose "task_Category_housework"
			And I fill in "task_Reward" with "100"
			And I press "Submit" 		 
			Then I should see "Task was successfully created." 
			
		Scenario: Edit Tasks 
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task
			And I press "Back"
			And I follow "Edit"
			Then I should see "Editing Task" 
			
		Scenario: Destroy Tasks 
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task
			And I press "Back"
			And I follow "Destroy"
			Then I should see "Task was successfully destroyed."
			
		Scenario: Accept Task
			Given a logged in user 
			When I press "Task Master" 
			And I create a random task
			Then I should have a mailto link 
				
			
			
			 