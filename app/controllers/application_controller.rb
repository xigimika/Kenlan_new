class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def after_sign_in_path_for(resource)
     users_path
  end



  protected
  # 以下のパラメーターを追加します
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:pic_name,
  													   :last_name,
  													   :last_name_kana,
  													   :first_name,
  													   :first_name_kana,
  													   :company_name,
  													   :company_name_kana,
  													   :zip,
  													   :address,
  													   :tell,
  													   :id])
  end
 end

