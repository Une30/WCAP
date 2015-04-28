class CreateBalloons < ActiveRecord::Migration
  def change
    create_table :balloons do |t|
      t.integer :bart_id
      t.integer :pumps
      t.integer :explosion
      t.integer :response_time

      t.timestamps
    end
  end
end
