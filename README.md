# README

To test just run:
* `bundle install`
* `rake db:migrate`
* `rails server`

You can create tickets in the console like this:
`rails console`
`Ticket.create(abstract: 'Testing the abstract', 
               details: 'Testing the details', 
               type: 'Defect')`
