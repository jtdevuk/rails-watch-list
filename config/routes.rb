Rails.application.routes.draw do
  resources :lists do
    get "/bookmarks/new", to: "bookmarks#new"
  end
end
