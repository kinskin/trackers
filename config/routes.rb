Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis' => 'kopis#index'
  get '/kopis/new' => 'kopis#new'
  post '/kopis' => 'kopis#create', as: 'new_kopi'

  get '/origins' => 'origins#index'
  get '/origins/new' => 'origins#new'
  post '/origins' => 'origins#create', as: 'create_origin'
  get '/origins/:id' => 'origins#show', as: 'origin_show'




end