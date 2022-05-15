class RideOffer < ActiveRecord::Base
	belongs_to :driver, class_name: 'User', foreign_key: 'driver_id'

	validates :leaving_place, :leaving_time, :leaving_date, :car_model,
						:car_color, :car_license_plate, :available_seats,
						presence: true
end
