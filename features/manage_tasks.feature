Feature: Manage Tasks 

		Scenario: Create Tasks 
			Given a logged in user
			When I create a new task
			And I fill in "Description" with "Clean Room" 
			And  I choose "task_Category_housework"
			And I fill in "task_Reward" with "100"
			And I press "Submit" 		 
			Then I should see "Task was successfully created." 