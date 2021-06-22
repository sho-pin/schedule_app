class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :name, limit: 30, null: false
      t.text :description
      t.date :start_date, null:false
      t.date :end_date, null:false

      t.timestamps
    end
  end
end
