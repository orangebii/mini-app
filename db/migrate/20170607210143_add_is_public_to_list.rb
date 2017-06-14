class AddIsPublicToList < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :is_public, :integer
  end
end
