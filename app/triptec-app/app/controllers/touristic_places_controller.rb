class TouristicPlacesController < ApplicationController
  before_action :set_touristic_place, only: [:show, :edit, :update, :destroy]

  # GET /touristic_places
  # GET /touristic_places.json
  def index
    @touristic_places = TouristicPlace.all
  end

  # GET /touristic_places/1
  # GET /touristic_places/1.json
  def show
  end

  # GET /touristic_places/new
  def new
    @touristic_place = TouristicPlace.new
  end

  # GET /touristic_places/1/edit
  def edit
  end

  # POST /touristic_places
  # POST /touristic_places.json
  def create
    @touristic_place = TouristicPlace.new(touristic_place_params)

    respond_to do |format|
      if @touristic_place.save
        format.html { redirect_to @touristic_place, notice: 'Touristic place was successfully created.' }
        format.json { render :show, status: :created, location: @touristic_place }
      else
        format.html { render :new }
        format.json { render json: @touristic_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touristic_places/1
  # PATCH/PUT /touristic_places/1.json
  def update
    respond_to do |format|
      if @touristic_place.update(touristic_place_params)
        format.html { redirect_to @touristic_place, notice: 'Touristic place was successfully updated.' }
        format.json { render :show, status: :ok, location: @touristic_place }
      else
        format.html { render :edit }
        format.json { render json: @touristic_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touristic_places/1
  # DELETE /touristic_places/1.json
  def destroy
    @touristic_place.destroy
    respond_to do |format|
      format.html { redirect_to touristic_places_url, notice: 'Touristic place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touristic_place
      @touristic_place = TouristicPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def touristic_place_params
      params.require(:touristic_place).permit(:name_place, :latitude, :longitude, :address, :type, :img, :telephone, :rating, :schedule, :website, :description, :activities, :price_per_day)
    end
end
