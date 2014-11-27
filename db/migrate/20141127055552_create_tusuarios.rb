class CreateTusuarios < ActiveRecord::Migration
  def change
    create_table :tusuarios do |t|
      t.string :username
      t.references :mensaje, index: true

      t.timestamps
    end
  end
end
