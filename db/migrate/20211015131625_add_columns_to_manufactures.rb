class AddColumnsToManufactures < ActiveRecord::Migration[5.2]
  def change
    add_column :manufactures, :weather, :text
    add_column :manufactures, :atmospheric_temperature, :integer
  end
end
