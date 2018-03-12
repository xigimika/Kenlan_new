class RemoveKeyWordFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :key_word, :string
  end
end
