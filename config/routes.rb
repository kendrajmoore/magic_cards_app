Rails.application.routes.draw do
  resources :card_data
  devise_for :users
    root 'home#index'
    get 'card/index', to: 'card#index'
    get 'home/about', to: 'home#about'
    get 'home/search', to: 'home#search'
    get 'home/show', to: 'home#show'
    post 'home/search' => 'home/search'
end
