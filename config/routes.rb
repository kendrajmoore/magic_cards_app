Rails.application.routes.draw do
  devise_for :users
    get 'card/index'
    #get 'home/index'
    root 'home#index'
    get 'home/about'
end
