class AddAdShowToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ad_show, :string
  end
end
