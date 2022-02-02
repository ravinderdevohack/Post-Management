Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth' }
  # , controllers: { sessions: 'users/sessions' } 

  get 'state', to: 'users#state'
  get 'cities', to: 'users#cities'
  get 'users/show'
  get 'user_profile/:id', to: 'users#user_profile', as: 'user_profile' 
  get 'user_activate/:id', to: 'users#activate', as: 'user_activate' 
  get 'user_deactivate/:id', to: 'users#deactivate', as: 'user_deactivate' 

  delete 'users/destroy', to: 'users#destroy'


  post 'draft', to: 'posts#draft'
  get 'posts/draft', to: 'posts#show_draft'
  get 'posts/search'

  root "posts#index"

  resources :users do 
    collection do 
      # post 'user_profile'
    end
  end 
  resources :posts
  # devise_scope :user do
  #   get 'edit' => 'users/registrations#edit'
  # end  
end
