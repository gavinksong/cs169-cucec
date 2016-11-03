class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.integer :student_id
      t.integer :mentor_id

      t.timestamps
    end
  end
end
