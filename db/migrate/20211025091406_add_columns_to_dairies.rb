class AddColumnsToDairies < ActiveRecord::Migration[5.2]
  def change
    add_column :dairies, :date, :date
  end
end
