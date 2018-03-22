class AddCategory2ToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_2, :string
  end
end
