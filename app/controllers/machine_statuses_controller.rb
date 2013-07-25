class MachineStatusesController < ApplicationController
  before_action :set_machine_status, only: [:show, :edit, :update, :destroy]

  # GET /machine_statuses
  # GET /machine_statuses.json
  def index
    @machine_statuses = MachineStatus.all
  end

  # GET /machine_statuses/1
  # GET /machine_statuses/1.json
  def show
  end

  # GET /machine_statuses/new
  def new
    @machine_status = MachineStatus.new
  end

  # GET /machine_statuses/1/edit
  def edit
  end

  # POST /machine_statuses
  # POST /machine_statuses.json
  def create
    @machine_status = MachineStatus.new(machine_status_params)

    respond_to do |format|
      if @machine_status.save
        format.html { redirect_to @machine_status, notice: 'Machine status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @machine_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @machine_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_statuses/1
  # PATCH/PUT /machine_statuses/1.json
  def update
    respond_to do |format|
      if @machine_status.update(machine_status_params)
        format.html { redirect_to @machine_status, notice: 'Machine status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @machine_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_statuses/1
  # DELETE /machine_statuses/1.json
  def destroy
    @machine_status.destroy
    respond_to do |format|
      format.html { redirect_to machine_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_status
      @machine_status = MachineStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_status_params
      params.require(:machine_status).permit(:ip, :cpu_usage, :disk_io_rate, :load, :tcp_connection)
    end
end
