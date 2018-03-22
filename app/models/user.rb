class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates :zip, numericality: { only_integer: true }
	validates :tell, numericality: { only_integer: true }

 has_many :products


private
  	def user_params
    	params.require(:user).permit(:email,
    								 :password,
    								 :password_confirmation,
    								 :remember_me, :pic_name,
    								 			   :company_name)
  	end

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end


end
