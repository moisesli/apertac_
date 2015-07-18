class CreateDirectorios < ActiveRecord::Migration
  def change
    create_table :directorios do |t|
      t.string :nombre_empresa
      t.string :nombre_responsable
      t.string :numero1
      t.string :numero2
      t.string :ruc
      t.string :dni
      t.string :descripcion
      t.text :contenido
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4

      t.timestamps null: false
    end
  end
end
