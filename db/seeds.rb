# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie_types = ["action", "romance", "thriller", "science", "documentary"]

10.times do |n|
  movie_name = Faker::Movie.unique.quote
  released_date = Faker::Time.backward(days: 5, period: :morning, format: :short)
  movie_type = movie_types[rand(0..4)]
  Movie.create!(name:   movie_name,
              movie_type:     movie_type,
    released_date: released_date,
    )
end


20.times do |n|
  name = Faker::Name.name
  age = Faker::Number.number(digits: 2)
  movies = Movie.all.sample(rand(1..2))
  actor = Actor.create!(name:     name,
               age:      age
    )
  actor.movies = movies
end

100.times do |n|
  name = Faker::Name.name
  address = Faker::Address.street_address
  tel = Faker::PhoneNumber.phone_number
  cinema = Cinema.create!(name:  name,
                 address:  address, 
                 tel:    tel
             )
  10.times do |m|
    start_time = Faker::Time.forward(days: 5,  period: :evening, format: :short)
    end_time = Faker::Time.forward(days: 5,  period: :evening, format: :short)
    price = Faker::Number.number(digits: 2)
    movie_id = Movie.pluck(:id).sample
    sh = Show.create!(movie_id:   movie_id,
                start_time:  start_time,
                end_time:   end_time,
                price:  price,
                cinema_id:  cinema.id
    )
    9.times do |k|
      Seat.create!(show_id: sh.id,
              booked: false,
              seat_number: k+1
      )
    end
  end
end

100.times do |n|
  name = Faker::Name.name
  age = Faker::Number.number(digits: 2)
  cinema = Cinema.all.sample
  Employee.create!(name:    name,
                age:       age,
                cinema_id:    cinema.id
  )
end