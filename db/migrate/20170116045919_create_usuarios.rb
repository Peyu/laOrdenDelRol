class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :mail
      t.string :password_digest
      t.string :acceso

      t.timestamps null: false
    end
  end
end
