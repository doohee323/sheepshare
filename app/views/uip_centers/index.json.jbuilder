json.array!(@uip_centers) do |uip_center|
  json.extract! uip_center, :code, :name, :chief, :address, :phone
  json.url uip_center_url(uip_center, format: :json)
end
