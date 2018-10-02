Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  resources :workouts
  get '/users/:id/workout_menu', to: 'workouts#menu', as: :workout_menu

  resources :gyms, only: [:index, :show]
  get '/search', to: 'gyms#search'

  get '/', to: 'application#welcome'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post '/logout',  to: 'sessions#destroy'
  get '/users/:id/profile', to: 'users#profile', as: :profile

end
