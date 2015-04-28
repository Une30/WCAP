class CreateRegs < ActiveRecord::Migration
  def change
    create_table :regs do |t|
      t.integer :clinic_id
      t.integer :user_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
