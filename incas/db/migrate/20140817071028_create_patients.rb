class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :file_number
      t.integer :private_code
      t.boolean :gender
      t.datetime :year_of_birth
      t.datetime :interview_date
      t.string :marital_status
      t.integer :educational_year
      



      t.timestamps
    end
  end
end
