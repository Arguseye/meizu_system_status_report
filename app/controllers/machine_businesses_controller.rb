class MachineBusinessesController < ApplicationController
  before_action :set_machine_business, only: [:show, :edit, :update, :destroy]

  # GET /machine_businesses
  # GET /machine_businesses.json
  def index
    @machine_businesses = MachineBusiness.all
  end

  # GET /machine_businesses/1
  # GET /machine_businesses/1.json
  def show
  end

  # GET /machine_businesses/new
  def new
    @machine_business = MachineBusiness.new
  end

  # GET /machine_businesses/1/edit
  def edit
  end

  # POST /machine_businesses
  # POST /machine_businesses.json
  def create
    @machine_business = MachineBusiness.new(machine_business_params)

    respond_to do |format|
      if @machine_business.save
        format.html { redirect_to @machine_business, notice: 'Machine business was successfully created.' }
        format.json { render action: 'show', status: :created, location: @machine_business }
      else
        format.html { render action: 'new' }
        format.json { render json: @machine_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_businesses/1
  # PATCH/PUT /machine_businesses/1.json
  def update
    respond_to do |format|
      if @machine_business.update(machine_business_params)
        format.html { redirect_to @machine_business, notice: 'Machine business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @machine_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_businesses/1
  # DELETE /machine_businesses/1.json
  def destroy
    @machine_business.destroy
    respond_to do |format|
      format.html { redirect_to machine_businesses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_business
      @machine_business = MachineBusiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_business_params
      params.require(:machine_business).permit(:ip, :type, :business, :domain)
    end
end
