class UipRegionsController < ApplicationController
	def create
		@uip_center = UipCenter.find(params[:uip_center_id])
    @uip_region = @uip_center.uip_regions.create(params[:uip_region].permit(:code, :region_code, :name, :chief, :address))
		redirect_to uip_center_path(@uip_center)
	end

	def destroy
		@uip_center = UipCenter.find(param[:uip_center_code])
		@uip_region = @uip_center.uip_regions.find(params[:code])
    @uip_center.destroy
    @uip_region.destroy
		redirect_to uip_center_path(@uip_center)
  end
end
