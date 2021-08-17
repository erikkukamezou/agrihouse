class ChangeDatetypeContentOfEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :content, :string
  end
end
