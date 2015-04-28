class CreateBarts < ActiveRecord::Migration
  def change
    create_table :barts do |t|
      t.integer :task_id
      
      t.timestamps
    end
  end
end
