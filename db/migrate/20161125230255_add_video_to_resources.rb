class AddVideoToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :video, :string
  end
end