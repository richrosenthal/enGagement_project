Use Sinatra to build the app
/*Used Corneal Gem*/

Use ActiveRecord for storing information in a database
/*Uses Active Record for Users/Gages*/

Include more than one model class (e.g. User, Post, Category)
/*Uses Users and Gages model*/


Include at least one has_many relationship on your User model (e.g. User has_many Posts)
/*Has many gages*/

Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
/*Gages belong to user*/

Include user accounts with unique login attribute (username or email)
/*User accounts are made unique by email*/

Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
/*Full CRUD*/ 

Ensure that users can't modify content created by other users
/*Users cannot modify non-owned gages*/
Include user input validations
/*Used date type to prevent users from putting in non-dates into fields*/

BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)


Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Confirm

You have a large number of small Git commits
/*Check*/
Your commit messages are meaningful
/*Check*/
You made the changes in a commit that relate to the commit message
/*Check*/
You don't include changes in a commit that aren't related to the commit message
/*Check*/
