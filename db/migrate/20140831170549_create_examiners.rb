class CreateExaminers < ActiveRecord::Migration
  def change
    create_table :examiners do |t|
      t.integer :clinic_id
      t.integer :user_id
      t.boolean :confirmation

      t.timestamps
    end
  end
end
