class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :conversation_id
      t.integer :mentor_id
      t.integer :student_id
      t.boolean :read
      t.text :content
      t.string :author_type
      t.integer :author_id

      t.timestamps
    end
  end
end
