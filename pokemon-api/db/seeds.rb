100.times do
  name = Faker::Pokemon.name
  location = Faker::Pokemon.location
  move = Faker::Pokemon.move
  Pokemon.create(
                  name: name,
                  location: location,
                  move: move
                  )
end
