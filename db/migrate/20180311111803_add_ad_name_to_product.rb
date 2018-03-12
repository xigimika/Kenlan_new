class AddAdNameToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :ad_name, :string
  end
end
