class AddReferenceToPlatillo < ActiveRecord::Migration
  def change
    add_reference :platillos, :restaurant, index: true, foreign_key: true
  end
end
