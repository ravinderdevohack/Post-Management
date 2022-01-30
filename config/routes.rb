Rails.application.routes.draw do
  devise_for :users
  # , controllers: { sessions: 'users/sessions' } 

  get 'users/show'
  # get 'posts/index'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  resources :posts
  
end
