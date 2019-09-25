Rails.application.routes.draw do
  root 'tasks#index'
  # get 'tasks/show/:id' => 'tasks#show'
  post 'tasks/create' => 'tasks#create'
  delete 'tasks/delete/:id' => 'tasks#delete', as: :task_delete
  get 'tasks/:id/edit' => 'tasks#edit', as: :task_edit
  post 'tasks/:id/update' => 'tasks#update'
end
