Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create, :show]
  end
  delete "bookmarks/:id", to: "bookmarks#destroy"
end
