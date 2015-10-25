Rails.application.routes.draw do
  root 'characters#index'
  resources :characters
  resources :powers
  resources :items
end
