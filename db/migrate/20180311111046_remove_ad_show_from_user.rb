class RemoveAdShowFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ad_show, :string
  end
end
