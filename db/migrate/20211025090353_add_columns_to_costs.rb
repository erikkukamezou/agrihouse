class AddColumnsToCosts < ActiveRecord::Migration[5.2]
  def change
    add_column :costs, :miscellaneous_expenses, :integer
  end
end
