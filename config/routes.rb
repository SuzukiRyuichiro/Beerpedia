Rails.application.routes.draw do
  get 'breweries/index'
  get 'breweries/create'
  get 'breweries/new'
  get 'breweries/show'
  get 'beers/index'
  get 'beers/create'
  get 'beers/new'
  get 'beers/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beers, only: [:index, :create, :new, :show]

  resources :breweries, only: [:index, :create, :new, :show] do
    resources :beers, only: [:index, :create, :new, :show]
  end
end
