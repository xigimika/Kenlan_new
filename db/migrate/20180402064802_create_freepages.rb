class CreateFreepages < ActiveRecord::Migration[5.1]
  def change
    create_table :freepages do |t|
      t.string :title
      t.string :genre
      t.text :text
      t.string :image_free_id
      t.string :midashi_1
      t.string :midashi_2
      t.string :midashi_3
      t.string :midashi_4
      t.string :midashi_5
      t.string :midashi_6
      t.text :stext_1
      t.text :stext_2
      t.text :stext_3
      t.text :stext_4
      t.text :stext_5
      t.text :stext_6
      t.string :image_f2_1_id
      t.string :image_f2_2_id
      t.string :image_f2_3_id
      t.string :image_f2_4_id
      t.string :image_f2_5_id
      t.string :image_f2_6_id

      t.timestamps
    end
  end
end
