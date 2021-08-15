class CreateManufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :manufactures do |t|
      t.integer:harvest
      t.integer:indoor_temperature
      t.integer:soil_temperature
      t.integer:humidity

      t.timestamps
    end
  end
end
