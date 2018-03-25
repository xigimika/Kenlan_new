class AddCategoryDetail2ToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_detail_2, :string
  end
end
