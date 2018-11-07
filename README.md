# README - Action from UI

- routes
- resources :todos

VERSION CONTROL!! - git 
- see saved file github and git set up in documents


FOR A NEW TODO:
Initiate a Todo instance variable
- looked like this in the console
    todo1 = Todo.new
- we are not in the console so we need a INSTANCE VARIABLE
    @todo1 = Todo.new (this is done in the controller)
    @ -> makes this accecable not only in our controller but also in out views



CORRESPONDING ACTIONS:
(1) NEW - form to create a new todo
submit to CREATE  - hits the database or gives an error

~To iterate through a key value pair - <% EACH DO |NAME, MSG| %>

FLASH - stores whatever i say to put in flash and displays it
- I can add messages to flash (wich is a hash)
- Then I can display the contents of the messages that are in flash

(2) SHOW
displays an individual todo

(3) EDIT - form to edit an existing todo
submit to UPDATE - hits the database with PATCH or gives error
- route path will be > edit_todo GET    /todos/:id/edit(.:format)   

(4) INDEX
list all todos
- route path will be > todos GET    /todos(.:format)  todos#index
- create a template
- def in controller -add instance variable
- 

(5) DELETE
destroys a todo