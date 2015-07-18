class AddImagesToNoticias < ActiveRecord::Migration
  def change
    add_column :noticias, :imagen1, :string
    add_column :noticias, :imagen2, :string
    add_column :noticias, :imagen3, :string
    add_column :noticias, :imagen4, :string
    add_column :noticias, :imagen5, :string
  end
end
