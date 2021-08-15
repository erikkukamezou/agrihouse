class AddUserToRefToManufactures < ActiveRecord::Migration[5.2]
  def change
    add_reference :manufactures, :user, foreign_key: true
  end
end
