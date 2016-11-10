class CreateEstablecimientos < ActiveRecord::Migration
  def change
    create_table :establecimientos do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :precio
      t.decimal :cantidad

      t.timestamps null: false
    end
  end
end
