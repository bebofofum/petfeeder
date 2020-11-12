# README

## Project Name: ## 
Pet Feeder

## Project Description: ## 
A pet feeder app to keep track of pet feeders within a family. When you have many pets with owners with crazy work schedules, working night vs day shifts it's challenging to keep track of whether pets have been fed especially as some lizards don't get fed every day. This app provides a way to check in, log a feeding and to see what pet has been fed and what they were fed. 

## Project Install Instructions: ## 
1. Clone the repo.
2. In terminal, shift to the app directory. Type cd 'petfeeder'
3. Run 'bundle install' to ensure all dependencies are installed. 
4. Run 'rake db:migrate' in Terminal to run migrations for creating the User, Pet, and Feeding database tables.
5. In terminal start the rails server by typing 'rails s'.
8. In your browser open a new window and enter 'localhost:' followed by the server address shown by the rails server, the last 4 digits after the colon. (For example 'Listening on 127.0.0.1:3000' would use 3000, as in localhost:3000)


## Project Contributors: ##


## Project License: ## 
MIT License



## Specifications for the Rails Assessment ##

Specs:

[X] Using Ruby on Rails for the project --> [Using Ruby on Rails] 
[X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) --> [User has many Pets through Feeding. Pet has many Users through Feeding]
[X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) --> [Feeding belongs_to User and Pet]
[X] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) --> [User has many Pets through Feeding. Pet has many Users through Feeding]
[X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) --> [User has many Pets through Feeding. Pet has many Users through Feeding]
[X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) --> [Feeding join table has category, description and completion]
[X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) --> [Pet validates name presence, uniqueness and length, and species presence. User validates to name and password, Feeding validates to description presence]
[X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) --> [Currently using 2 scopes in Feeding model s]
[X] Include signup (how e.g. Devise) --> [Provided through Devise]
[X] Include login (how e.g. Devise) --> [Provided through Devise]
[X] Include logout (how e.g. Devise) --> [Provided through Devise]
[X] Include third party signup/login (how e.g. Devise/OmniAuth) --> [Sign up through GoogleOauth2]
[X] Include nested resource show or index (URL e.g. users/2/recipes)
[X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
[ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:

[ ] The application is pretty DRY
[ ] Limited logic in controllers
[X] Views use helper methods if appropriate
[X] Views use partials if appropriate








