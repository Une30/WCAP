class CreateGonogos < ActiveRecord::Migration
  def change
    create_table :gonogos do |t|
      t.integer :task_id

      t.timestamps
    end
  end
end
