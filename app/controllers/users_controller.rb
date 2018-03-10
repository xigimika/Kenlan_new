class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def show_edit
  end

  def new
  	@user = User.new
  end

  def create
	user = User.new(user_params)
	# user_id = current_user.id
	user.save
	redirect_to product_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

    def company_params
        params.require(:company).permit(
        		:category,
        		:company_name,
        		:company_name_kana,
        		:ad_name,
                :ad_image,
        		:key_word,
                :ad_show,
                :url)
    end


end
