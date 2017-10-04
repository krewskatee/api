Rails.application.routes.draw do
  get '/pokemons' => 'pokemons#index'
  post '/pokemons' => 'pokemons#create'
  patch '/pokemons/:id' => 'pokemons#update'
  get '/pokemons/:id' => 'pokemons#show'
  delete '/pokemons/:id' => 'pokemons#destroy'
end
