Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # VERB 'path', to: 'controller#action', as: :nickname

  # READ ALL
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'

  # 2. receive the form submission
  post '/restaurants', to: 'restaurants#create'

  # CREATE
  # 1. display the form => NEW
  get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

  # UPDATE
  # 1. display the edit form
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'

  # READ ONE
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # 2. receive the form submission
  patch '/restaurants/:id', to: 'restaurants#update'

  delete '/restaurants/:id', to: 'restaurants#destroy'

end
