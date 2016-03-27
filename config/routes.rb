Rails.application.routes.draw do

  devise_for :users

  root 'home#index'

  resources :stories

  resources :users

  resources :prompts

  resources :categories
 
end
