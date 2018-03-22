class AddAdminNameToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :admin_name, :string
  end
end
