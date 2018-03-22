class AddZayuToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :zayu, :string
  end
end
