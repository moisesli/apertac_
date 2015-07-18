class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.string :titulo
      t.string :imagen
      t.string :descripcion
      t.string :contenido
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4
      t.string :imagen5
      t.string :visible
      t.string :tipo

      t.timestamps null: false
    end
  end
end
