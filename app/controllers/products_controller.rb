class ProductsController < ApplicationController

  def top
  	
  end

  def index
  	# @products = Product.all.order("created_at DESC")
    @products = Product.page(params[:page]).per(10).order("created_at DESC")
    @u = Product.search
  end

  def search
    @u = Product.search(params[:q])
    @results = @u.result(distinct: true).page(params[:page]).per(10).order("created_at DESC")
    render :index
  end

  def show
    @product = Product.find(params[:id])
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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
      redirect_to root_path
  end



  private

    def product_params
        params.require(:product).permit(
            :category,
            :category_2,
            :category_detail,
            :category_detail_2,
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
