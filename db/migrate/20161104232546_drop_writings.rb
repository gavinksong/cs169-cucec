class DropWritings < ActiveRecord::Migration[5.0]
  def change
    drop_table :writings
  end
end
