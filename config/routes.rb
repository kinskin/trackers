Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'origins#index'

  resources :origins
  resources :kopis, except: [:new]

  get '/origins/:id/kopis/new' => 'kopis#new', as: 'new_kopi'
  post '/origins/:id/kopis' => 'kopis#create'
end