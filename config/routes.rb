Rails.application.routes.draw do


  devise_for :accs, :controllers => { :omniauth_callbacks => "accs/omniauth_callbacks" }
  
  get "u/:username" => "public#profile", as: :profile
  resources :communities do
  resources :posts
end



resources :subscriptions
resources :comments, only: [:create]

post "post/vote" => "votes#create"
  root to: "public#index"

  root to: "photos#index"
  resources :photos
end
