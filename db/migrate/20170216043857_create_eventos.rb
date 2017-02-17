class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :imagen
      t.string :titulo
      t.text :cuerpo

      t.timestamps null: false
    end
  end
end
