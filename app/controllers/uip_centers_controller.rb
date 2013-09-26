class UipCentersController < ApplicationController
  before_action :set_uip_center, only: [:show, :edit, :update, :destroy]
  
  # GET /uip_centers
  # GET /uip_centers.json
  def index
    @uip_centers = UipCenter.all
  end

  # GET /uip_centers/1
  # GET /uip_centers/1.json
  def show
    @uip_centers = UipCenter.find(params[:id])
    #debugger    
    a = "aaa"
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
    @uip_center = UipCenter.new(uip_center_params)
    respond_to do |format|
      if @uip_center.save
        format.html { redirect_to @uip_center, notice: 'Uip center was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uip_center }
      else
        format.html { render action: 'new' }
        format.json { render json: @uip_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uip_centers/1
  # PATCH/PUT /uip_centers/1.json
  def update
    respond_to do |format|
      @uip_center.update(uip_center_params)
      if @uip_center.update(uip_center_params)
        format.html { redirect_to @uip_center, notice: 'Uip center was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uip_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uip_centers/1
  # DELETE /uip_centers/1.json
  def destroy
    @uip_center.destroy
    respond_to do |format|
      format.html { redirect_to uip_centers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uip_center
      @uip_center = UipCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uip_center_params

      #params.require(:uip_center).permit(:code, :name, :chief, :address, :phone)
      data = params.require(:uip_center)
      data.each do |p|
        # hash = JSON.parse(json_data)
        # hash["firstname"] = "John"
        # hash.delete("lastname")
        # new_json = hash.to_json

        p.delete("url")
        p.delete("rowStatus")

        # params.require(p.to_hash).permit(:code, :name, :chief, :address, :phone)

        ActionController::Parameters.new(p.to_hash).permit(:code, :name, :chief, :address, :phone)

        debugger
      end
    end
end
