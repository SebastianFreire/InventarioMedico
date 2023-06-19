class CreateEquipos < ActiveRecord::Migration[7.0]
  def change
    create_table :equipos do |t|
      t.string :name
      t.string :description
      t.string :serial
      t.string :adquisition
      t.string :state
      t.string :location

      t.timestamps
    end
  end
end
