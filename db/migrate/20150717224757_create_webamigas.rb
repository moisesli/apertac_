class CreateWebamigas < ActiveRecord::Migration
  def change
    create_table :webamigas do |t|
      t.string :titulo
      t.string :descripcion
      t.string :url
      t.string :logo
      t.text :contenido
      t.string :imagen1
      t.string :imagen2
      t.string :visible

      t.timestamps null: false
    end
  end
end
