Rails.application.routes.draw do
  resources :person_punishments
  resources :punishments
  resources :events
  resources :people
  resources :fields
  resources :events
  resources :clubs
  root 'home#home'
  get 'home/home'

  resources :clubs do
    collection do
      post 'select_update'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
