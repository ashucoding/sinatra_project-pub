Purpose of Application: Create an application that tracks something important.

Application Purpose: To track inventory of cars for Collectors and Car
Dealerships.

Future Adjustments: Application can be designed and more attributes can be added
to the app to suit end-user needs. Example Car Dealership can add price, lot #
and quantity.

•	Installation

Gems located in Gemfile: You can use Homebrew (if you have iOS) or bundle
install to install the gems.

Sinatra: application framework and dependencies (rack)  which will be
receiving requests for web pages, digesting them, and then handing them off to
your Sinatra application.
Sqlite3: serverless self contained database. Allows new instances and attributes to be organized into a table and assigned a unique key id.
Activerecord, :require => "active_record": ORM (object relational mapping)
allows ruby to access object stored in the database(Sqlite3)
Rake: quickly create files and folders, and automate tasks such as database creation
Pry: prompts interactive console for your program
Sinatra-activerecord: See rake/activerecord. Needed for sinatra
Require_all: access the entire directory.
Shotgun: allows you to access the server thru your terminal
Bcrypt' , '~>3.1.7': encrypts user password on the database


•	Usage Instructions
Once the bundles are install, Start server by executing 'bundle exec shotgun'
  Signup: http://localhost:9393/signup
    create user login with email and unique password. If login already exist,
    user will be prompted to Login. Also if the user does not signup with email and error message will generate.
  Login: http://localhost:9393/Login
    use the login that you created on the signup page to login. Login is
    case sensitive
  Vehicle Inventory List: http://localhost:9393/cars After logging in. You are on the Listing page. Here you can see all of the cars listed by all users. User is able to create a car here edit and delete cars only the users creates.
  Creating New Car Listing: http://localhost:9393/cars/new User can create a
  new car listing here.
  Edit an existing Car: http://localhost:9393/cars/14/edit User can only Edit
  cars that they user created. Hence why the userid is attached to car.
  Delete an existing Car: User can only delete a car that user created.
  Logout: http://localhost:9393/logout User can logout from acct and rerouted
  back to login page.

•	Requirements:
Build an MVC Sinatra application – As mentioned before Aysan’s or Avi’s youtube video can help you set up the folders.

Use ActiveRecord with Sinatra. – ActiveRecord is a gem which you can bundle install and house in your gemfile.
Use multiple models – In my models folder, I have User and Car. Here is where I specific a few things. Has Many/belongs to relationship and Validates that my user must have an email that cannot be duplicated and in an email form. Validates that cars created must have make model color year and that the Year is entered as a numerical value.

Use at least one has_many relationship on a User model and one belongs_to relationship on another model – in the model folder specifies the relationship between models. In my case. User has many cars and cars belong to user.

Must have user accounts - users must be able to sign up, sign in, and sign out. – This is a 2 part creation. Your controllers where you create code that allow your user to Create a user name via sign up, login, logout and save them to database. Then there is the views folder that house your html (hypertext markup language) code for the user to actually see and carry out these tasks on the web browser.

Validate uniqueness of user login attribute (username or email). – Coded in your model’s folder. This allows user to use a unique email or an email that cannot be duplicated and also In a correct form of an email.

Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user. – Another 2 Folder task. Controller and Views.
•	License
MIT License
