class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
