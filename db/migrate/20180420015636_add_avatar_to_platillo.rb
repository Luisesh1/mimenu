class AddAvatarToPlatillo < ActiveRecord::Migration
  def change
    add_column :platillos, :avatar, :string
  end
end
