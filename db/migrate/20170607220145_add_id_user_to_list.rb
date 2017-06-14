class AddIdUserToList < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :id_user, :integer
  end
end
