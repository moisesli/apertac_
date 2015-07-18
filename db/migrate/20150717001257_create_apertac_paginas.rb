class CreateApertacPaginas < ActiveRecord::Migration
  def change
    create_table :apertac_paginas do |t|
      t.string :titulo
      t.text :contenido
      t.string :visible
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4
      t.string :imagen5
      t.string :imagen6
      t.string :imagen7
      t.string :imagen8
      t.string :imagen9
      t.string :imagen10

      t.timestamps null: false
    end
  end
end
