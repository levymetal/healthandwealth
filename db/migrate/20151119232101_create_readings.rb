class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.datetime :date
      t.integer :systolic
      t.integer :diastolic
      t.integer :heart_rate
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
