Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, exepet: [:edit, :update] do
    resources :bookmarks, only: %i[create new]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
