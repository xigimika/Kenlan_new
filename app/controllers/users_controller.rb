class UsersController < ApplicationController

before_action :authenticate_user!

  def index
    @products = Product.all
    # @user = User.page(params[:page]).reverse_order
  end

  def show
    # @user = User.find(params[:id])
    @product = Product.find(params[:id])
  end

  def show_edit
  end

  def new
  end


  def edit
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    # @user.update(user_params)
    # redirect_to users_path(@user.id)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
      redirect_to root_path
  end



end
