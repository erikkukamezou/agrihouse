class AddDateToManufactures < ActiveRecord::Migration[5.2]
  def change
    add_column :manufactures, :date, :date
  end
end
