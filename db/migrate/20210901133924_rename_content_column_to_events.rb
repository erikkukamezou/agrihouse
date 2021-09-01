class RenameContentColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :content, :title
  end
end
