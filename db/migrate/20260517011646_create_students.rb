class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true, index: { unique: true }
      t.integer :workout_time, null: false # in months
      t.integer :workout_goal, null: false
      t.string :dietary_restrictions, array: true, default: []
      t.string :physical_limitations, array: true, default: []
      t.float  :weight, null: false, precision: 10, scale: 2
      t.float :height, null: false, precision: 10, scale: 2
      t.string :medical_notes, array: true, default: []
      t.timestamps
    end
  end
end
