# README

**Session 1 Introduction :** 

steps from scratch
1. Gemfile - gem "trailblazer-rails' - bundle 
2. rails g model User name:string email:string
3. rails db:migrate
4. User.connection
5. User::Operation::Index
6. User.create(:name => 'first', :email => 'f@gmail.com')
7. User::Operation::Index.()
8. index.rb -> add content
9. result= User::Operation::Index.()
10. result[:users]

**Seesion 4 Cells And Views**

* Goals :
1) List users - /users

2) Add new User - /users/new

* files changed/used/created 

1. Operation - new.rb , create.rb , index.rb
2. Contract - form.rb
3. Cell - new, index
4. View - index, new
5. routes.rb  
6. Gemfile

* Add these gems to Gemfile :

gem 'trailblazer-rails'

gem 'trailblazer'

gem 'trailblazer-cells'

gem 'reform','2.2.4'

gem 'reform-rails'

gem 'trailblazer-endpoint', github: 'trailblazer/trailblazer-endpoint'

gem 'pundit'

gem "cells-rails"

gem "cells-haml"

gem 'simple_form', '4.0.0'

* Ignore (_old) create_old.rb , index_old.rb files

-------------------------------------------------------------------------------------------------------------
Original Readme

gem 'trailblazer-rails'
gem 'trailblazer'
gem 'trailblazer-cells'
gem 'reform','2.2.4'
gem 'reform-rails'

gem 'trailblazer-endpoint', github: 'trailblazer/trailblazer-endpoint'
gem 'pundit'
gem "cells-rails"
gem "cells-haml"
gem 'simple_form', '4.0.0'

Ignore (_old) create_old.rb , index_old.rb files

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
