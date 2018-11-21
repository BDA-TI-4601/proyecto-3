class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create

    puts " ################ !!!!!  -> DATA: #{params}"

    @p_longitude = params['employee']['longitude']
    @p_latitude = params['employee']['latitude']
    @p_place_id = params['employee']['place_id']

    create_touristic_place()

    #@employee = Employee.new(employee_params)

    #respond_to do |format|
      # if @employee.save
      #   format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
      #   format.json { render :show, status: :created, location: @employee }
      # else
      #   format.html { render :new }
      #   format.json { render json: @employee.errors, status: :unprocessable_entity }
      # end
    #end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:description, :activities, :price_per_day, :latitude, :longitude)
    end

    def create_touristic_place()
      api_key = 'AIzaSyADMbY9eYILhr4V_1oj4OiwaGPIYBXp5oM'
      client = GooglePlaces::Client.new(api_key)

      algo = client.spots(@p_longitude, @p_latitude)

      puts " ################ !!!!!  -> DATA: #{algo}"

    end

end
