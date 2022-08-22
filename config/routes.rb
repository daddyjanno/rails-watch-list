Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index show new create destroy]

  resources :bookmarks, only: :destroy
  root to: 'lists#index'
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
  end
end
