class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string   :name
      t.string   :attachment
      t.timestamps null: false
    end
  end
end
