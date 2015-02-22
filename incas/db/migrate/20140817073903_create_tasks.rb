class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :patient_id
      t.integer :clinic_id
      t.boolean :confirmed

      t.timestamps
    end
  end
end
