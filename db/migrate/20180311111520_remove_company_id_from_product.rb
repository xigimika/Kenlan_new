class RemoveCompanyIdFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :company_id, :integer
  end
end
