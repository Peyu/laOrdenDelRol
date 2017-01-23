class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.string :cuerpo
      t.references :articulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
