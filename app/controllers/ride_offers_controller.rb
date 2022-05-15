class RideOffersController < ApplicationController
  before_action :set_ride_offer, only: [:show, :update, :destroy]

  # GET /ride_offers
  def index
    @ride_offers = RideOffer.all

    render json: @ride_offers
  end

  # GET /ride_offers/1
  def show
    render json: @ride_offer
  end

  # POST /ride_offers
  def create
    @ride_offer = RideOffer.new(ride_offer_params)

    if @ride_offer.save
      render json: @ride_offer, status: :created, location: @ride_offer
    else
      render json: @ride_offer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ride_offers/1
  def update
    if @ride_offer.update(ride_offer_params)
      render json: @ride_offer
    else
      render json: @ride_offer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ride_offers/1
  def destroy
    @ride_offer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ride_offer
      @ride_offer = RideOffer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ride_offer_params
      params.require(:ride_offer).permit(:driver_id, :leaving_place, :leaving_time, :leaving_date, :car_model, :car_color, :car_license_plate, :available_seats)
    end
end
