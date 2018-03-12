class AddAdShowTextToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :ad_show_text, :text
  end
end
