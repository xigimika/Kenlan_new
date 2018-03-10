class AddKeyWordToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :key_word, :string
  end
end
