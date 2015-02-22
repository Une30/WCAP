class CreateDdtquestions < ActiveRecord::Migration
  def change
    create_table :ddtquestions do |t|
      t.integer :question_type
      t.string :value1
      t.string :value2
      t.string :value3

      t.timestamps
    end
  end
end
