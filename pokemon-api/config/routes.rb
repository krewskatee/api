Rails.application.routes.draw do
  namespace :v1 do
    get '/pokemons' => 'pokemons#index'
    post '/pokemons' => 'pokemons#create'
    patch '/pokemons/:id' => 'pokemons#update'
    get '/pokemons/:id' => 'pokemons#show'
    delete '/pokemons/:id' => 'pokemons#destroy'
  end

  namespace :v2 do
    get '/pokemons' => 'pokemons#index'
    post '/pokemons' => 'pokemons#create'
    patch '/pokemons/:id' => 'pokemons#update'
    get '/pokemons/:id' => 'pokemons#show'
    delete '/pokemons/:id' => 'pokemons#destroy'
  end

end
