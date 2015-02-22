class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.integer :user_id
      t.integer :clinic_id

      t.timestamps
    end
  end
end
