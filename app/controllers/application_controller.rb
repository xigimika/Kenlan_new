class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_params, if: :devise_controller?

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def after_sign_in_path_for(resource)
     if admin_signed_in?
      admins_homes_path
     else
      users_path
     end
  end




  protected
  # 以下のパラメーターを追加します
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [
                               :pic_name,
  													   :last_name,
  													   :last_name_kana,
  													   :first_name,
  													   :first_name_kana,
  													   :company_name,
  													   :company_name_kana,
  													   :zip,
  													   :address,
  													   :tell,
  													   :id,
                               :admin_name,
                               :aihao,
                               :aichi,
                               :zayu,
                               :id_kari])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [
                               :pic_name,
                               :last_name,
                               :last_name_kana,
                               :first_name,
                               :first_name_kana,
                               :company_name,
                               :company_name_kana,
                               :zip,
                               :address,
                               :tell,
                               :id,
                               :admin_name,
                               :aihao,
                               :aichi,
                               :zayu,
                               :id_kari])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [
                                      :attribute,
                                      :last_name,
                                      :last_name_kana,
                                      :first_name,
                                      :first_name_kana,
                                      :pic_name,
                                      :company_name,
                                      :company_name_kana,
                                      :zip,
                                      :address,
                                      :tell,
                                      :admin_name,
                                      :aihao,
                                      :aichi,
                                      :zayu,
                                      :id_kari])
  end
 end

