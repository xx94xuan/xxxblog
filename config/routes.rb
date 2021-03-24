Rails.application.routes.draw do

  get '/', to: 'landing_page#index', as: 'landing_page'
  get '/public_piece_show/:id', to: 'landing_page#public_piece_show', as: 'public_piece'

  get 'hello_world', to: 'hello_world#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/user/register', to: 'user#new', as: 'new_user'
  post '/user/create', to: 'user#create', as: 'create_user'
  get '/user/login', to: 'user#login', as: 'user_login'
  get 'user/logout', to: 'user#logout', as: 'user_logout'
  post '/user/validate_user', to: 'user#validate_user', as: 'validate_user'

  delete '/pieces/:id/delete', to: 'pieces#destroy', as: 'delete_piece'
  resources :pieces

  delete '/events/:id/delete', to: 'events#destroy', as: 'delete_event'
  resources :events

  resources :chats
end
