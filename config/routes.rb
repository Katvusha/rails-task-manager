Rails.application.routes.draw do
  # Read all:

  root to: 'tasks#home'

  get '/tasks', to: 'tasks#index', as: :tasks
  get '/show', to: 'tasks#show', as: :show

  # Create
  get 'tasks/new', to: 'tasks#new', as: :new
  post '/tasks', to: 'tasks#create'

  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
