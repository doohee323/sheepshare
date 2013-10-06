class UipRegionSerializer < ActiveModel::Serializer
  attributes :id, :code, :region_code, :name, :chief, :address, :updated_at
  has_one :uip_center
end
