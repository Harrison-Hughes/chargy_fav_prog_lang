Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "git_hub_user#new"
  post "/git_hub_users", to: "git_hub_user#create"
  get "/git_hub_users/:id", to: "git_hub_user#show"

end
