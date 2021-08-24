Rails.application.routes.draw do
  devise_for :users
  
  root to: "chats#index"
  resources :messages, only: [:index, :create, :destroy]

  resources :chats, only: [:index, :create, :destroy]
end
