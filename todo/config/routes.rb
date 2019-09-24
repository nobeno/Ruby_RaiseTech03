Rails.application.routes.draw do
  root 'tasks#index'
  get 'tasks/show/:id' => 'tasks#show'
  post 'tasks/create' => 'tasks#create'   
end
