class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    p_id = params[:client][:id_client]
    p_name = params[:client][:name]
    p_telephone = params[:client][:telephone]
    p_username = params[:client][:username]
    p_password = params[:client][:password]
    p_reservations = []
    p_wishes = []

    user_exist = Client.where(username: p_username).exists?
    @new_client = 0
    if user_exist
      redirect_to logins_path, notice: "Username not available!" and return
    else
      @new_client = Client.new(
        id_client: p_id,
        telephone: p_telephone,
        name: p_name,
        username: p_username,
        password: p_password,
        reservations: p_reservations,
        wishes: p_wishes
      )
      if @new_client.save
        redirect_to logins_path, notice: "New user created!" and return
      else
        redirect_to logins_path, notice: "Error creating new user!" and return
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

end
