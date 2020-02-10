Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Route for showing *all* tasks
  get 'tasks', to: 'tasks#index'

  # routes for adding a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Route for showing single tasks
  get 'tasks/:id', to: 'tasks#show', as: :task

  # routes for editing a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # route for deleting a task
  # delete...
end
