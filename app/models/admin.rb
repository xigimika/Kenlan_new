class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  with_options presence: true do
	validates :pic_name
	validates :aihao
	validates :aichi
	validates :zayu
	validates :id_kari
  end



private

  	def admin_params
  		params.require(:admin).permit(:email,
    								 :password,
    								 :password_confirmation,
    								 :remember_me, :pic_name,
    								 			   :aihao,
    								 			   :aichi,
    								 			   :zayu,
    								 			   :id_kari)
  	end



end
