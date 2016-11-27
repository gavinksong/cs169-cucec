class AddColumnToMentors < ActiveRecord::Migration[5.0]
  def change
    add_column :mentors, :is_available, :integer
  end
end
