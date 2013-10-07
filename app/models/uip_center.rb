class UipCenter < ActiveRecord::Base
	has_many :UipRegion, :dependent => :destroy
end
