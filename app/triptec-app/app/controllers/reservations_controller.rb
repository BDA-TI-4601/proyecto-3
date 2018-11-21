class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @username_actual = params['user']
    @reservations = Reservation.where(username: @username_actual)
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @username_actual = params[:user]
    @reservation = Reservation.new
    @spots = Spot.all
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create    
    p_name = params[:reservation][:name]
    p_amount_people = params[:reservation][:amount_people]
    p_year1 = params[:reservation]["arrive_date(1i)"].to_i
    p_month1 = params[:reservation]["arrive_date(2i)"].to_i
    p_day1 = params[:reservation]["arrive_date(3i)"].to_i
    p_year2 = params[:reservation]["departure_date(1i)"].to_i
    p_month2 = params[:reservation]["departure_date(2i)"].to_i
    p_day2 = params[:reservation]["departure_date(3i)"].to_i
    p_needs = params[:reservation][:needs].split(' ')
    p_activities = params[:reservation][:activities].split(' ')

    @reservation = Reservation.new(
      username: @username_actual,
      name: p_name,
      amount_people: p_amount_people,
      arrive_date: Date.new(
        p_year1,
        p_month1,
        p_day1
      ),
      departure_date: Date.new(
        p_year2,
        p_month2,
        p_day2
      ),
      needs: p_needs,
      activities: p_activities
    )

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:name, :amount_people, :arrive_date, :departure_date, :needs, :activities)
    end
end
