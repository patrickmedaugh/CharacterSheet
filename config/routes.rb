Rails.application.routes.draw do
  root 'characters#index'
  resources :characters
  namespace :character do
    get '/:id/items/new', to: 'items#new', as: 'new_item'
    post '/:id/items/new', to: 'items#create', as: 'items'
    get '/:id/powers/new', to: 'powers#new', as: 'new_power'
    post '/:id/powers/new', to: 'powers#create', as: 'powers'
  end
end
