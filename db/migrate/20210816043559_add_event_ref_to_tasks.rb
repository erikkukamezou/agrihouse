class AddEventRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :event, foreign_key: true
  end
end
