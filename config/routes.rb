Rails.application.routes.draw do
  resources :feedings
  resources :pets 
  devise_for :users

  root 'pets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
