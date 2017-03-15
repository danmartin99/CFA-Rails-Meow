Rails.application.routes.draw do
  resources :meow_posts
  devise_for :users
   root to: "home#feed"
  get 'home/feed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
