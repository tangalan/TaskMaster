Feature: User Login 

	Scenario: Login
	  Given a valid user
	  When I go to the login page
	  And I fill in the following:
	    |Email|foo@bar.com|
	    |Password|12345678|
	  And I press "Log in"
	  Then I should see "Signed in successfully."
	  
	  Scenario: Log off 
	  	Given a logged in user 
	  	When I follow "Log out"
	  	Then I should see "Signed out successfully."
	  	
	  Scenario: Access New Task without logging in
	  	When I go to the home page 
	  	And I follow "Task Master" 
	  	Then I should see "You need to sign in or sign up before continuing."
	  
	  Scenario: Access Tasks List without logging in
	  	When I go to the home page
	  	And I follow "Task Doer" 
	  	Then I should see "You need to sign in or sign up before continuing." 
	  	
	  	
	  
	  