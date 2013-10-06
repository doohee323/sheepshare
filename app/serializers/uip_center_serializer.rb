class UipCenterSerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :chief, :address, :phone, :updated_at
end
