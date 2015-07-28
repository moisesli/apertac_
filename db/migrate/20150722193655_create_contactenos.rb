class CreateContactenos < ActiveRecord::Migration
  def change
    create_table :contactenos do |t|
      t.string :asunto
      t.string :tipo
      t.string :nombre
      t.string :email
      t.text :contenido
      t.string :adjunto1
      t.string :adjunto2
      t.string :adjunto3

      t.timestamps null: false
    end
  end
end
