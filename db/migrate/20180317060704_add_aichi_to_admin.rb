class AddAichiToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :aichi, :string
  end
end
