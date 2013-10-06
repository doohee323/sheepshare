class UipRegionsController < ApplicationController
  # GET /uip_regions
  # GET /uip_regions.json
  def index
    @uip_regions = UipRegion.where("uip_center_id = ?", params[:uip_center_id])
    render json: @uip_regions
  end

  # GET /uip_regions/1
  # GET /uip_regions/1.json
  def show
    @uip_region = UipRegion.find(params[:id])

    render json: @uip_region
  end

  # POST /uip_regions
  # POST /uip_regions.json
  def create
    @uip_region = UipRegion.new(params[:uip_region])

    if @uip_region.save
      render json: @uip_region, status: :created, location: @uip_region
    else
      render json: @uip_region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /uip_regions/1
  # PATCH/PUT /uip_regions/1.json
  def update
    @uip_region = UipRegion.find(params[:id])

    if @uip_region.update(params[:uip_region])
      head :no_content
    else
      render json: @uip_region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uip_regions/1
  # DELETE /uip_regions/1.json
  def destroy
    @uip_region = UipRegion.find(params[:id])
    @uip_region.destroy

    head :no_content
  end
end
