Rails.application.routes.draw do
  resources :git_hub_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "user#index"
  get '/find', to: 'user#new' 

end
