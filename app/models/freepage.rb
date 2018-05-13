class Freepage < ApplicationRecord

attachment :image_free
attachment :image_f2_1
attachment :image_f2_2
attachment :image_f2_3
attachment :image_f2_4
attachment :image_f2_5
attachment :image_f2_6

belongs_to :admin

validates_presence_of :title,:genre,:text

end
