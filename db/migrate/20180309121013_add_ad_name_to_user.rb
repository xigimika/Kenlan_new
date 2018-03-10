class AddAdNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ad_name, :string
  end
end
