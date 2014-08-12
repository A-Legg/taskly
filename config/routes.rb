Rails.application.routes.draw do
  root "task_lists#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "about" => "about#about"
  get "task_lists/new" => "task_lists#new"
  post "task_lists" => "task_lists#create"
  get "task_lists/:id/edit" => "task_lists#edit"
  patch "task_lists/:id/edit" => "task_lists#update"



  get "task_lists/:id/tasks/new" => "tasks#new_task"
  post "task_lists/:id/tasks/new" => "tasks#create", as: :create
  delete "task_lists/:task_list_id/tasks/:id" => "tasks#destroy"

  patch "task_lists/:task_list_id/tasks/:id/edit" => "tasks#edit"

  get "task_lists/:id/completed" => "task_lists#completed"

end
