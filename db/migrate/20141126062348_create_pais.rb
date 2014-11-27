class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nombre_pais

      t.timestamps
    end
  end
end
