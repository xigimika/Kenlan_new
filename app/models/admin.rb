class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

private
  	def user_params
    	params.require(:user).permit(:email,
    								 :password,
    								 :password_confirmation,
    								 :remember_me, :admin_name,
    								 			   :aihao,
    								 			   :aichi,
    								 			   :zayu,
    								 			   :id_kari)
  	end



end
