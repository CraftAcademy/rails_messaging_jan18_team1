@javascript
Feature: User can delete message from inbox

   As a User
   In order to keep my inbox organized
   I would like to be able to delete messages from the inbox

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

	Scenario: User can move mail to trash 
	   When I have "1" messages
		And I click on "View"
		And I click on "Move to trash"
  	   And I should see alert message and click on OK
		And I am visiting the "Inbox"
  	   Then I have "0" messages

