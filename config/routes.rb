Rails.application.routes.draw do

  root 'site#index'

  devise_for :users

  get 'site/chat', path: "chat"

  resources :conversations do
    resources :messages
  end

  end
