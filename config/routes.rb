Rails.application.routes.draw do
  resources :lists do
    # get "/bookmarks/new", to: "bookmarks#new"
    resources :bookmarks, only: [:new, :create]
  end
end
