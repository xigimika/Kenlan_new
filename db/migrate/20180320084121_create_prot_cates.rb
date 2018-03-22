class CreateProtCates < ActiveRecord::Migration[5.1]
  def change
    create_table :prot_cates do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
end
