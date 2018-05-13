class AddAdminIdToFreepages < ActiveRecord::Migration[5.1]
  def change
    add_column :freepages, :admin_id, :integer
  end
end
