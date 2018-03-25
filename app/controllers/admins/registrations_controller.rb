# frozen_string_literal: true

class Admins::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
      @admin = Admin.find(id=1)
  end

  # PUT /resource
  def update
      admin = Admin.find(id=1)
      admin.update(admin_params)
      redirect_to admins_homes_path
  end


# def update
#     admin = Admin.find(id=1)
#     # @admin.skip_reconfirmation! # メールアドレス変更確認しない
#     # result = if current_user.id == @user.id
#     #            # 自身の更新ならパスワード入力を求める
#     #            @user.update_with_password(user_params)
#     #          else
#     #            @user.update(user_params)
#     #          end
#     admin.update(admin_params)
#     if result
#       # パスワード変更でログアウトするのを防ぐ
#       sign_in(@admin, bypass: true) if current_admin.id == @admin.id
#       redirect_to admins_homes_path, notice: '更新しました'
#     else
#       render action: :edit
#     end
#   end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected
def admin_params
  params.require(:admin).permit(:pic_name, :aihao, :aichi, :zayu, :id_kari, :email, :password)
end

 def after_update_path_for(resource)
    admins_homes_path
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end


end
