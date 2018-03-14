class UsersController < ApplicationController

before_action :authenticate_user!

  def index
    # @products = Product.where(user_id: current_user.id)
    @products = Product.page(params[:page]).per(5).where(user_id: current_user.id).order("created_at DESC")
    @u = Product.search
  end

  def search
    @u = Product.search(params[:q])
    @results = @u.result(distinct: true).page(params[:page]).per(5).where(user_id: current_user.id).order("created_at DESC")
    # if @results == nil
    #       @products = Product.page(params[:page]).per(2).where(user_id: current_user.id).order("created_at DESC")
    # end
    render :index
  end

  def show
    # @user = User.find(params[:id])
    @user = User.find(params[:id])
  end

  def show_edit
  end

  def new
  end




  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user.id)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
      redirect_to root_path
  end



end
