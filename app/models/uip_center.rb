class UipCenter < ActiveRecord::Base
	  has_many :uip_regions, :dependent => :destroy
	
end
