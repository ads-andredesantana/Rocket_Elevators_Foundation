class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :author, null:false
      t.integer :customer_id, null:false
      t.integer :building_id, null:false
      t.integer :battery_id
      t.integer :column_id
      t.integer :elevator_id
      t.integer :employee_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :result, default: "Incomplete", null:false
      t.text :report
      t.string :status, default: "Pending", null:false
      t.datetime :created_at, null:false
      t.datetime :updated_at, null:false

      t.timestamps
    end
  end
end
