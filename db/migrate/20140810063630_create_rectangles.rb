class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|
      t.integer :gonogo_id
      t.integer :state
      t.integer :is_clicked
      t.integer :display_time
      t.integer :response_time
      t.integer :reaction_time

      t.timestamps
    end
  end
end
