require "test_helper"

class RideOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ride_offer = ride_offers(:one)
  end

  test "should get index" do
    get ride_offers_url, as: :json
    assert_response :success
  end

  test "should create ride_offer" do
    assert_difference('RideOffer.count') do
      post ride_offers_url, params: { ride_offer: { available_seats: @ride_offer.available_seats, car_color: @ride_offer.car_color, car_license_plate: @ride_offer.car_license_plate, car_model: @ride_offer.car_model, driver_id: @ride_offer.driver_id, leaving_date: @ride_offer.leaving_date, leaving_place: @ride_offer.leaving_place, leaving_time: @ride_offer.leaving_time } }, as: :json
    end

    assert_response 201
  end

  test "should show ride_offer" do
    get ride_offer_url(@ride_offer), as: :json
    assert_response :success
  end

  test "should update ride_offer" do
    patch ride_offer_url(@ride_offer), params: { ride_offer: { available_seats: @ride_offer.available_seats, car_color: @ride_offer.car_color, car_license_plate: @ride_offer.car_license_plate, car_model: @ride_offer.car_model, driver_id: @ride_offer.driver_id, leaving_date: @ride_offer.leaving_date, leaving_place: @ride_offer.leaving_place, leaving_time: @ride_offer.leaving_time } }, as: :json
    assert_response 200
  end

  test "should destroy ride_offer" do
    assert_difference('RideOffer.count', -1) do
      delete ride_offer_url(@ride_offer), as: :json
    end

    assert_response 204
  end
end
