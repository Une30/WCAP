class CreateAbusings < ActiveRecord::Migration
  def change
    create_table :abusings do |t|
      t.integer :drug_id
      t.integer :first_use
      t.integer :total_use
      t.integer :using_days
      t.integer :use_code
      t.integer :patient_id
      t.text :comments

      t.timestamps
    end
  end
end
