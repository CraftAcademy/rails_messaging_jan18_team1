Feature: User is able to receive and reply to email
    As a User
	In order to let other people communicate with me
	I would like to be able to receive emails.


	Background:
		Given following users exist
			|       name            |   email                       |   password    |   password_confirmation    |
			|       Viktor          |   user@yahoo.com              |   11111111    |   11111111                 |
			|       Nici            |   niciputter@yahoo.com        |   11111111    |   11111111                 |
		And the following email exists
			|       sender  	| receiver      | body          | subject       |
			|       Nici	    | Viktor        | some message  | some subject  |
		And I am logged in as "Viktor"
		And I am visiting the "Inbox"
 
	Scenario: User can receive mail
		When I click on "View" 
		Then I should see "Move to trash"
        
	Scenario: User can reply to mail
		When I click on "View"
		And I click on "Reply"
    	Then I should see "Your reply message was successfully sent!"

	
    