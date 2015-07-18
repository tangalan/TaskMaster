Feature: Login

	Scenario: Login
	  Given a valid user
	  When I go to the login page
	  And I fill in the following:
	    |Email|foo@bar.com|
	    |Password|12345678|
	  And I press "Log in"
	  Then I should see "Signed in successfully."