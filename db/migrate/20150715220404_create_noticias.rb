class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :resumen
      t.text :contenido
      t.string :autor
      t.string :img_noticia
      t.string :visible

      t.timestamps null: false
    end
  end
end
