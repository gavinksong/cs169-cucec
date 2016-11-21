class CreateWritings < ActiveRecord::Migration[5.0]
  def change
    create_table :writings do |t|
      t.text    :sample
      t.integer :student_id
      t.string  :date
    end
  end
end
