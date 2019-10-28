# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  movie_name = Faker::Movie.quote
  released_date = Faker::Time.backward(days: 5, period: :morning, format: :short)
  Movie.create!(name:   movie_name,
              movie_type:     "romance",
    released_date: released_date,
    )
end
  

10.times do |n|
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
    Show.create!(movie_id:   m+1,
                start_time:  start_time,
                end_time:   end_time,
                price:  price,
                cinema_id:  cinema.id
      )
  end
end

