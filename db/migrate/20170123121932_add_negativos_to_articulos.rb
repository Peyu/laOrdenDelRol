class AddNegativosToArticulos < ActiveRecord::Migration
  def change
    add_column :articulos, :negativos, :integer
  end
end
