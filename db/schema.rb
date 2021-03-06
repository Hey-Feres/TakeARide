# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_15_023757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ride_offers", force: :cascade do |t|
    t.bigint "driver_id"
    t.string "starting_place"
    t.time "leaving_time"
    t.date "leaving_date"
    t.string "starting_address_street"
    t.string "starting_address_city"
    t.string "starting_address_number"
    t.string "starting_address_neighborhood"
    t.string "starting_address_zip"
    t.decimal "starting_address_longitude"
    t.decimal "starting_address_latitude"
    t.string "starting_address_reference"
    t.string "car_model"
    t.string "car_color"
    t.string "car_license_plate"
    t.integer "available_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_ride_offers_on_driver_id"
  end

  create_table "rides", force: :cascade do |t|
    t.bigint "passenger_id"
    t.bigint "ride_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["passenger_id"], name: "index_rides_on_passenger_id"
    t.index ["ride_offer_id"], name: "index_rides_on_ride_offer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "ride_offers", "users", column: "driver_id"
  add_foreign_key "rides", "ride_offers"
  add_foreign_key "rides", "users", column: "passenger_id"
end
