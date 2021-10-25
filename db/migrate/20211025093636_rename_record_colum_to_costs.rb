class RenameRecordColumToCosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :costs, :record, :record_date
  end
end
