class AddStudentIdToWritings < ActiveRecord::Migration[5.0]
  def change
    add_column :writings, :student_id, :integer
  end
end
