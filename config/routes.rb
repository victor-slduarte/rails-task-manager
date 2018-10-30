Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index', as: 'tasks' # readAll

  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create', as: 'create_task' # createNew

  get 'tasks/:id', to: 'tasks#show', as: 'task' # realOne

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task' # edit

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task' # delete
end
