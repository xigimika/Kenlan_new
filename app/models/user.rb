class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# validates :zip, numericality: { only_integer: true }
	# validates :tell, numericality: { only_integer: true }

 attachment :ad_image

 has_many :products


CATEGORY_LIST = {
    "塾／学校" => "塾／学校", "ファッション" => "ファッション", "美容" => "美容", "マッサージ" => "マッサージ", "仕事探し" => "仕事探し",
    "健康" => "健康", "医療" => "医療", "ゲーム／アニメ" => "ゲーム／アニメ", "トラベル" => "トラベル", "株／為替／金融" => "株／為替／金融",
    "レストラン／カフェ" => "レストラン／カフェ", "食品" => "食品", "お部屋探し" => "お部屋探し", "ショッピングサイト" => "ショッピングサイト", "ウェディング" => "ウェディング",
    "その他" => "その他"
  }

end
