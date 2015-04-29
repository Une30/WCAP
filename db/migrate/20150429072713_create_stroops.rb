class CreateStroops < ActiveRecord::Migration
  def change
    create_table :stroops do |t|
      t.integer :task_id
      t.integer :duration
      t.boolean :before_stimulation
      t.integer :total_items
      t.integer :correct_items

      t.timestamps
    end
  end
end
