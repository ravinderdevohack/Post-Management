Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth' }
  # , controllers: { sessions: 'users/sessions' } 

  get 'state', to: 'users#state'
  get 'cities', to: 'users#cities'
  get 'users/show'
  post 'draft', to: 'posts#draft'
  get 'posts/draft', to: 'posts#show_draft'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  resources :posts
  # devise_scope :user do
  #   get 'edit' => 'users/registrations#edit'
  # end  
end
