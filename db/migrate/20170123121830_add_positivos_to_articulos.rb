class AddPositivosToArticulos < ActiveRecord::Migration
  def change
    add_column :articulos, :positivos, :integer
  end
end
