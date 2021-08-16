class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text:work
      t.text:image

      t.timestamps
    end
  end
end
