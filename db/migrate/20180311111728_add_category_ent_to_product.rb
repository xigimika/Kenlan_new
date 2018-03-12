class AddCategoryEntToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_ent, :string
  end
end
