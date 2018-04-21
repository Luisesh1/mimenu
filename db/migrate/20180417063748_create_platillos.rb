class CreatePlatillos < ActiveRecord::Migration
  def change
    create_table :platillos do |t|
      t.string :nombre
      t.decimal :precio
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
