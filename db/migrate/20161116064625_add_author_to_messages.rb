class AddAuthorToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :author, polymorphic: true
  end
end
