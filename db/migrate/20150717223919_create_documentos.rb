class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :titulo
      t.string :descripcion
      t.text :contenido
      t.string :tipo_extension
      t.string :tipo_documento
      t.string :visible
      t.string :archivo1
      t.string :archivo2
      t.string :archivo3
      t.string :archivo4
      t.string :archivo5
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4
      t.string :imagen5

      t.timestamps null: false
    end
  end
end
