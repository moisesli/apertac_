class CreateConvocatorias < ActiveRecord::Migration
  def change
    create_table :convocatorias do |t|
      t.string :titulo
      t.string :descripcion
      t.text :contenido
      t.string :visible
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4

      t.timestamps null: false
    end
  end
end
