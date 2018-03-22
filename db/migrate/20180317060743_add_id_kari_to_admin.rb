class AddIdKariToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :id_kari, :string
  end
end
