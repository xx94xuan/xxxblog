Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  get 'welcome/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pieces

end
