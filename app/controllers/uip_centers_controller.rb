class UipCentersController < ApplicationController
  before_action :set_uip_center, only: [:show, :edit, :update, :destroy]
  
  # GET /uip_centers
  # GET /uip_centers.json
  def index
    @uip_centers = UipCenter.all
    
    render json: @uip_centers
  end

  # GET /uip_centers/1
  # GET /uip_centers/1.json
  def show
    @uip_centers = UipCenter.find(params[:id])
    #debugger    
    render json: @uip_centers
  end

  # GET /uip_centers/new
  def new
    @uip_center = UipCenter.new
  end

  # GET /uip_centers/1/edit
  def edit
  end

  # POST /uip_centers
  # POST /uip_centers.json
  def create
  	@uip_center = UipCenter.new(params[:uip_center].permit(:code, :name, :chief, :address, :phone))
	  if @uip_center.save
	  	render json: @uip_center, status: :created, location: @uip_center
	  else
	  	render json: @uip_center.errors, status: :unprocessable_entity
	  end
  end

  # PATCH/PUT /uip_centers/1
  # PATCH/PUT /uip_centers/1.json
  def update
    if @uip_center.update(params[:uip_center].permit(:code, :name, :chief, :address, :phone))
        render json: @uip_center
      # head :no_content
    else
      render json: @uip_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uip_centers/1
  # DELETE /uip_centers/1.json
  def destroy
    @uip_center.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uip_center
      @uip_center = UipCenter.find(params[:id])
    end

end
