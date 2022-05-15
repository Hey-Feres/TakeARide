class Ride < ActiveRecord::Base
  belongs_to :ride_offer
  belongs_to :passenger, class_name: 'User', foreign_key: 'passenger_id'
end
