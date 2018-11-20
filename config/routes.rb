Rails.application.routes.draw do
  resources :card_data
  resources :card_infos
  devise_for :users
    get 'card/index'
    #get 'home/index'
    root 'home#index'
    get 'home/about'
    get 'home/search'
    get 'home/show'
    post 'home/search' => 'home/search'
end
