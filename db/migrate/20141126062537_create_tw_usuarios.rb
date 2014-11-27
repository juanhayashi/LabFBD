class CreateTwUsuarios < ActiveRecord::Migration
  def change
    create_table :tw_usuarios do |t|
      t.string :username
      t.references :mensaje, index: true

      t.timestamps
    end
  end
end
