class CreateWritings < ActiveRecord::Migration[5.0]
  def change
    create_table :writings do |t|
      t.text :sample
      t.string :date
    end
  end
end
