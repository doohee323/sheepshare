class UipCentersController < ApplicationController
  # GET /uip_centers
  # GET /uip_centers.json
  def index
    @uip_centers = UipCenter.all

    render json: @uip_centers
  end

  # GET /uip_centers/1
  # GET /uip_centers/1.json
  def show
    @uip_center = UipCenter.find(params[:id])

    render json: @uip_center
  end

  # POST /uip_centers
  # POST /uip_centers.json
  def create
    @uip_center = UipCenter.new(params[:uip_center])

    if @uip_center.save
      render json: @uip_center, status: :created, location: @uip_center
    else
      render json: @uip_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /uip_centers/1
  # PATCH/PUT /uip_centers/1.json
  def update
    @uip_center = UipCenter.find(params[:id])

    if @uip_center.update(params[:uip_center])
      head :no_content
    else
      render json: @uip_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uip_centers/1
  # DELETE /uip_centers/1.json
  def destroy
    @uip_center = UipCenter.find(params[:id])
    @uip_center.destroy

    head :no_content
  end
end
