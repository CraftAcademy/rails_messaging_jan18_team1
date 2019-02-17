Feature: User is able to receive mail
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
        
#Scenario: User can reply to mail
	#When I type in a message
	#And I click on "Reply"
        ##Then my mail must be sent

#Scenario: User can move mail to trash 
	#When I click on "Move to trash"
        #Then I must receive a message "Are you sure?"
        #When I click on "OK"
        #Then my message will be moved to Trash
        
#Scenario: User cancels moving mail to trash 
	#When I click on "Move to trash"
        #Then I must receive a message "Are you sure?"
        #When I click on "Cancel"
        #Then my message will not be moved to Trash