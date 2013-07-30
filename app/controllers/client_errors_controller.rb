class ClientErrorsController < ApplicationController
  before_action :set_client_error, only: [:show, :edit, :update, :destroy]

  # GET /client_errors
  # GET /client_errors.json
  def index
    @client_errors = ClientError.all
  end

  # GET /client_errors/1
  # GET /client_errors/1.json
  def show
  end

  # GET /client_errors/new
  def new
    @client_error = ClientError.new
  end

  # GET /client_errors/1/edit
  def edit
  end

  # POST /client_errors
  # POST /client_errors.json
  def create
    @client_error = ClientError.new(client_error_params)

    respond_to do |format|
      if @client_error.save
        format.html { redirect_to @client_error, notice: 'Client error was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client_error }
      else
        format.html { render action: 'new' }
        format.json { render json: @client_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_errors/1
  # PATCH/PUT /client_errors/1.json
  def update
    respond_to do |format|
      if @client_error.update(client_error_params)
        format.html { redirect_to @client_error, notice: 'Client error was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_errors/1
  # DELETE /client_errors/1.json
  def destroy
    @client_error.destroy
    respond_to do |format|
      format.html { redirect_to client_errors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_error
      @client_error = ClientError.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_error_params
      params.require(:client_error).permit(:business, :errors, :time, :detail)
    end
end
