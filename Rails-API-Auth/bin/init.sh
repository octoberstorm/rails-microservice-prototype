#!/bin/bash

# Run these commands to setup the basic Knock structure.
rails generate knock:install
rails generate knock:token_controller user
# Next run the following commands to prepare your Rails application.
rails generate model users
rails generate controller users
rails generate controller home
rails g serializer user
rails db:create
