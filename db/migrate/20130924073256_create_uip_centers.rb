class CreateUipCenters < ActiveRecord::Migration
  def change
    create_table :uip_centers do |t|
      t.string :code
      t.string :name
      t.string :chief
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
