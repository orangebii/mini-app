class CreateListFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :list_favorites do |t|
      t.references :id_list, foreign_key: true
      t.references :id_user, foreign_key: true

      t.timestamps
    end
  end
end
