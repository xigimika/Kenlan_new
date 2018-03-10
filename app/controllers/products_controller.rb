class ProductsController < ApplicationController

  def top
  	
  end

  def index
  	@user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
  end
end
