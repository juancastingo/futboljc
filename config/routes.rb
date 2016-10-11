Rails.application.routes.draw do
  resources :people
  resources :fields
  resources :events
  resources :clubs
  root 'home#home'
  get 'home/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
