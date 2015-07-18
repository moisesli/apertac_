class AddLogoToDirectorios < ActiveRecord::Migration
  def change
    add_column :directorios, :logo, :string
  end
end
