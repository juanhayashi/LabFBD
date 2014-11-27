class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.references :fecha, index: true
      t.references :texto, index: true

      t.timestamps
    end
  end
end
