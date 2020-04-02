Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "git_hub_user#new"
  get "/find", to: "git_hub_user#new"
  post "/users", to: "git_hub_user#create"
  get "/users/:id", to: "git_hub_user#show", as: 'git_hub_user'

end
