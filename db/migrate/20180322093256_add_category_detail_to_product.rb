class AddCategoryDetailToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_detail, :string
  end
end
