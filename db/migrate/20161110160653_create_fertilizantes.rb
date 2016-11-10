class CreateFertilizantes < ActiveRecord::Migration
  def change
    create_table :fertilizantes do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :precio
      t.decimal :cantidad

      t.timestamps null: false
    end
  end
end
