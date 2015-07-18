class CreatePresidentes < ActiveRecord::Migration
  def change
    create_table :presidentes do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.string :telefono1
      t.string :telefono2
      t.string :ruc
      t.string :email
      t.string :descripcion
      t.text :contenido
      t.string :foto
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4

      t.timestamps null: false
    end
  end
end
