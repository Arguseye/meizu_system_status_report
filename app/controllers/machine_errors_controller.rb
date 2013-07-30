class MachineErrorsController < ApplicationController
  before_action :set_machine_error, only: [:show, :edit, :update, :destroy]

  # GET /machine_errors
  # GET /machine_errors.json
  def index
    @machine_errors = MachineError.all
  end

  # GET /machine_errors/1
  # GET /machine_errors/1.json
  def show
  end

  # GET /machine_errors/new
  def new
    @machine_error = MachineError.new
  end

  # GET /machine_errors/1/edit
  def edit
  end

  # POST /machine_errors
  # POST /machine_errors.json
  def create
    @machine_error = MachineError.new(machine_error_params)

    respond_to do |format|
      if @machine_error.save
        format.html { redirect_to @machine_error, notice: 'Machine error was successfully created.' }
        format.json { render action: 'show', status: :created, location: @machine_error }
      else
        format.html { render action: 'new' }
        format.json { render json: @machine_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_errors/1
  # PATCH/PUT /machine_errors/1.json
  def update
    respond_to do |format|
      if @machine_error.update(machine_error_params)
        format.html { redirect_to @machine_error, notice: 'Machine error was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @machine_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_errors/1
  # DELETE /machine_errors/1.json
  def destroy
    @machine_error.destroy
    respond_to do |format|
      format.html { redirect_to machine_errors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_error
      @machine_error = MachineError.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_error_params
      params.require(:machine_error).permit(:machine_business_id, :pv, :error, :error_type, :on_date)
    end
end
