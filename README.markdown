Pagificate
==========

Setup
----------

- In your gemfile

        gem 'pagificate'
        $ bundle install

- To create migration file run:

        $ rails g pagificate

- **Don't forget to run your migrations in your app!**

- In your layout be sure to yield titles.

        <title><%= yield :title %></title>
