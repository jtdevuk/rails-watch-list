Rails.application.routes.draw do
  get "/lists/new", to: "lists#new"
  get "lists", to: "lists#index"
  get "/lists/:id", to: "lists#show"
  post "/lists", to: "lists#create"
end
