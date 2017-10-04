json.array! @pokemons.each do |pokemon|
  json.id pokemon.id
  json.name pokemon.name
  json.location pokemon.location
  json.move pokemon.move
end
