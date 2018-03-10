class AddAdShowTextToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ad_show_text, :text
  end
end
