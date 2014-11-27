class CreateFechas < ActiveRecord::Migration
  def change
    create_table :fechas do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
