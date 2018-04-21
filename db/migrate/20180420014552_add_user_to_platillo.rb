class AddUserToPlatillo < ActiveRecord::Migration
  def change
    add_reference :platillos, :user, index: true, foreign_key: true
  end
end
