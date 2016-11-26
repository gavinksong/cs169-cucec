class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :conversation, foreign_key: true
      t.references :mentor, foreign_key: true
      t.references :student, foreign_key: true
      t.boolean :read

      t.timestamps
    end
  end
end
