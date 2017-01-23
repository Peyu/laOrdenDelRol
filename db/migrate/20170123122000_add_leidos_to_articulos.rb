class AddLeidosToArticulos < ActiveRecord::Migration
  def change
    add_column :articulos, :leidos, :integer
  end
end
