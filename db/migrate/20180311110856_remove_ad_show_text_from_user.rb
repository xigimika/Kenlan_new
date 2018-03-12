class RemoveAdShowTextFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ad_show_text, :string
  end
end
