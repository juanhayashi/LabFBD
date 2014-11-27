class CreateTextos < ActiveRecord::Migration
  def change
    create_table :textos do |t|
      t.text :texto
      t.string :idioma

      t.timestamps
    end
  end
end
