class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :nombre
      t.text :descripcion
      t.string :codigo_postal
      t.string :telefono

      t.timestamps null: false
    end
  end
end
