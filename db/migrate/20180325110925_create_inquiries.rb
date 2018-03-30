class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
    	t.string :name
    	t.string :name_kana
    	t.string :sex
    	t.string :company_name
    	t.string :address
    	t.string :tell
    	t.string :email
    	t.string :position
    	t.string :text
    	t.string :naiyou

      t.timestamps
    end
  end
end
