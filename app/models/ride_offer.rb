class RideOffer < ActiveRecord::Base
	belongs_to :driver, class_name: 'User', foreign_key: 'driver_id'

	# Add validation for leaving place/address

	validates :leaving_time,
			  :leaving_date,
			  :car_model,
			  :car_color,
			  :car_license_plate,
			  :available_seats,
			  :starting_address_longitude,
			  :starting_address_latitude,
			  presence: true

	geocoded_by :address, latitude: :starting_address_latitude, longitude: :starting_address_longitude

	before_validation :geocode

	def address
  		[starting_address_street, starting_address_neighborhood, starting_address_city, "MG", "Brasil"].compact.join(', ')
	end
end
