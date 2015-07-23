This project is developed using Ruby on the Rails (Ruby version: ruby 2.0.0p451) 
and Sunspot library to utilize Solr. 

To start the program, you need to do the following steps:

1- Upgrade the latest RubyGems:
  > gem update --system

2- Install rails if you don't have one already
  > gem install rails 
 
3- Add the following two lines to your Gemfile if not added already (Gemfile is located in the root directory of your project):

  gem 'sunspot_rails'
  gem 'sunspot_solr'

4- Run the following two commands
  > bundle install
  > rails generate sunspot_rails:install
 
5- Start the sunspot and the server 
  > bundle exec rake sunspot:solr:start 
  > bin/rails server

6- Launch the application by going to http://localhost:3000 on your browser

My model:
I have two tables:

Product -> text :Name, text :Description, integer: category_id
Category -> text :Name,  text :Description, integer :Priority

You can add the categories and products through the application's interface.
