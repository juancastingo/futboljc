Rails.application.routes.draw do
  resources :events
  resources :fields
  resources :clubs
  resources :people
  root 'home#home'
  get 'home/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
