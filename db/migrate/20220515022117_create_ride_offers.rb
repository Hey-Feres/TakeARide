class CreateRideOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :ride_offers do |t|
      t.references :driver, foreign_key: { to_table: :users }, index: true
      t.string     :leaving_place
      t.time       :leaving_time
      t.date       :leaving_date
      t.string     :car_model
      t.string     :car_color
      t.string     :car_license_plate
      t.integer    :available_seats

      t.timestamps
    end
  end
end
