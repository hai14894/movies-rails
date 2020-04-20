for i in 1..10
    Movie.create(
        title: Faker::Superhero.name,
        duration: Faker::Number.number(digits: 3)
    )
end