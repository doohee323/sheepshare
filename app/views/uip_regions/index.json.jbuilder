json.array!(@uip_regions) do |uip_region|
  json.extract! uip_region, :code, :region_code, :name, :chief, :address
  json.url uip_region_url(uip_region, format: :json)
end
