Rails.application.routes.draw do

  root 'welcome#index'
  resources :users
  resources :attractions
  post "/rides/new", to: "rides#new"
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy'

end
