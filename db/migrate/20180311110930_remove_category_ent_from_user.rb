class RemoveCategoryEntFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :category_ent, :string
  end
end
