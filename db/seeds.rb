# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(email: 'user@test.com', name: 'Test', password: '123456')
User.create!(email: 'user2@test.com', name: 'Test 2', password: '123456')

RideOffer.create!(
driver_id: User.first.id,
starting_address_street: 'Rua Piaui 1026',
starting_address_city: 'Belo Horizonte',
starting_address_neighborhood: 'Funcionarios',
leaving_time: '13:00',
leaving_date: '14/05/2022',
car_model: 'HB20',
car_color: 'Preto',
car_license_plate: 'BFV2022',
available_seats: 3
)

RideOffer.create!(
driver_id: User.second.id,
starting_address_street: 'Avenida Bias Fortes 234',
starting_address_city: 'Belo Horizonte',
starting_address_neighborhood: 'Lourdes',
leaving_time: '13:00',
leaving_date: '14/05/2022',
car_model: 'HB20',
car_color: 'Preto',
car_license_plate: 'BFV2022',
available_seats: 3
)

Ride.create!(passenger_id: User.last.id, ride_offer_id: RideOffer.first.id)

# RideOffer.near('Bias Fortes 234, Lourdes, Belo Horizonte', 16, units: :km)