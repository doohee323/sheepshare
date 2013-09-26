class CreateUipRegions < ActiveRecord::Migration
  def change
    create_table :uip_regions do |t|
      t.string :code
      t.string :region_code
      t.string :name
      t.string :chief
      t.string :address
      t.references :uip_center, index: true

      t.timestamps
    end
  end
end
