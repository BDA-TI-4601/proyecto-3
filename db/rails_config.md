Install Ruby on Rails
=====================

execute in terminal:

    sudo apt install zlib1g-dev ruby-full sqlite3

    sudo gem install rails


Ruby on Rails with MongoDB
==========================

new project in ruby on rails without sqlite (active-record):

    rails new <project-name> --skip-active-record

add this lines to your Gemfile:

    gem 'mongoid'

    gem 'bson_ext'

generate mongoid config file:

    rails generate mongoid:config

this will generate `config/mongoid.yml` a configuration file for MongoDB.

Ruby on Rails with Neo4j
========================

new project with Neo4j:

    rails new <project-name> -m http://neo4jrb.io/neo4j/neo4j.rb -O --skip-active-record 
    
add this line to your Gemfile (below `gem 'neo4j'`):

    gem 'neo4j-rake_tasks'
    
execute this commands in the project folder to start Neo4j database:

    rake neo4j:install[community-latest]
    
    rake neo4j:start

