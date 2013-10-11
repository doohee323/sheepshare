class UipRegionSerializer < ActiveModel::Serializer
  attributes :id, :uip_center_id, :code, :region_code, :name, :chief, :address, :updated_at
  has_one :uip_center
end
