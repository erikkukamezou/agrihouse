class AddAirToManufactures < ActiveRecord::Migration[5.2]
  def change
    add_column :manufactures, :air, :string
    add_column :manufactures, :solar, :string
    add_column :manufactures, :precipitation, :string
  end
end
