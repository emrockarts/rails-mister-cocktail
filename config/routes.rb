Rails.application.routes.draw do
  # get 'cocktails/index', to: 'cocktails#index', as: 'cocktails'
  # get 'cocktails/show/:id', to: 'cocktails#show', as: 'cocktail'
  # get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
  # post 'cocktails/', to: 'cocktails#create', as:
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
      # resources :ingredients, only:
  end
  resources :doses, only: [:destroy]
end
