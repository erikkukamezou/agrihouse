class RenameDateColumToCosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :costs, :date, :record
  end
end
