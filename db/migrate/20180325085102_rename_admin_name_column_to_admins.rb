class RenameAdminNameColumnToAdmins < ActiveRecord::Migration[5.1]
  def change
  	rename_column :admins, :admin_name, :pic_name
  end
end
