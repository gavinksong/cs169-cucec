class AddAdminToMentors < ActiveRecord::Migration[5.0]
  def change
    add_column :mentors, :admin, :boolean, default: false
  end
end
