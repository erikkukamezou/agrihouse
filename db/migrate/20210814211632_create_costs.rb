class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.integer :sale
      t.integer :fertilizer
      t.integer :soil
      t.integer :seed

      t.timestamps
    end
  end
end
