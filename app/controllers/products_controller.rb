class ProductsController < ApplicationController

  def top
  	
  end

  def index
  	@products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    # @user = @product.users.page(params[:page])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
       redirect_to product_path(@product)
    else
       render :new
    end
  end

  def edit
  end

  # def destroy
  #   @product = Product.find(params[:id])
  #   @product.destroy
  #     redirect_to root_path
  # end



  private

    def product_params
        params.require(:product).permit(
            :category,
            :category_ent,
            :company_name,
            :company_name_kana,
            :ad_name,
            :ad_image,
            :key_word,
            :ad_show,
            :ad_show_text,
            :url)
    end

end
