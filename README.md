# README

To test just run:
* `bundle install`
* `rails db:migrate db:fixtures:load`
* `rails server`

You can create tickets in the console like this:

`rails console`

`Ticket.create(abstract: 'Testing the abstract', 
               details: 'Testing the details', 
               type: 'Defect')`
