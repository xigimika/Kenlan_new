class RemoveAdNameFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ad_name, :string
  end
end
