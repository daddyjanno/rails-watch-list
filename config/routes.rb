Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index show new create]

  resources :bookmarks, only: %i[destroy]

  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
end
