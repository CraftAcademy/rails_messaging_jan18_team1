Feature: User is able to receive mail

Background:
        Given I visit the site
        And following users exist
|   name        |   email                       |   password    |   password_confirmation    |
|   User        |   user@yahoo.com              |   11111111    |   11111111                 |
|   Nici        |   niciputter@yahoo.com        |   11111111    |   11111111                 |
        And I am logged in as "User"
        And I am visiting the "Inbox"

	And the following email exists
| sender  	| receiver | body          | subject       |
| User	        | Nici     | some message  | some subject  |

Scenario: User can receive mail
	When I click  "View" 
	Then my message should open
        
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