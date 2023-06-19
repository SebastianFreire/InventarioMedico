class CreateCategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
