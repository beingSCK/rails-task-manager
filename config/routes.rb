Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Route for showing *all* tasks
  get 'tasks',    to: 'tasks#index'

  # Route for showing single tasks
  get 'task/:id', to: 'tasks#show'

  # routes for adding a new task
  # get...
  # post...

  # route for showing one task
  # get ...

  # route for editing a task
  # get ...
  # patch...

  # route for deleting a task
  # delete...
end
