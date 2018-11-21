class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]

  # GET /spots
  # GET /spots.json
  def index
    @spots = Spot.all
  end

  # GET /spots/1
  # GET /spots/1.json
  def show
  end

  # GET /spots/new
  def new
    @spot = Spot.new
  end

  # GET /spots/1/edit
  def edit
  end

  # POST /spots
  # POST /spots.json
  def create
    p_name = params[:spot][:name]
    p_latitude = params[:spot][:latitude]
    p_longitude = params[:spot][:longitude]
    p_address = params[:spot][:address]
    p_type = params[:spot][:type]
    p_img = params[:spot][:img]
    p_rating = params[:spot][:rating]
    p_schedule = params[:spot][:schedule]
    p_telephone = params[:spot][:telephone]
    p_website = params[:spot][:website]
    p_description = params[:spot][:description]
    p_activities = params[:spot][:activities].split(' ')
    p_price = params[:spot][:price]
    
    @spot = Spot.new(
      name: p_name,
      latitude: p_latitude,
      longitude: p_longitude,
      address: p_address,
      type: p_type,
      img: p_img,
      rating: p_rating,
      schedule: p_schedule,
      telephone: p_telephone,
      website:p_website,
      description:p_description,
      activities: p_activities,
      price: p_price
    )

    respond_to do |format|
      if @spot.save
        format.html { redirect_to @spot, notice: 'Spot was successfully created.' }
        format.json { render :show, status: :created, location: @spot }
      else
        format.html { render :new }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spots/1
  # PATCH/PUT /spots/1.json
  def update
    respond_to do |format|
      if @spot.update(spot_params)
        format.html { redirect_to @spot, notice: 'Spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @spot }
      else
        format.html { render :edit }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spots/1
  # DELETE /spots/1.json
  def destroy
    @spot.destroy
    respond_to do |format|
      format.html { redirect_to spots_url, notice: 'Spot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spot
      @spot = Spot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spot_params
      params.require(:spot).permit(:name, :latitude, :longitude, :address, :type, :img, :telephone, :rating, :schedule, :website, :description, :activities, :price)
    end
end
