class Admins::ProductsController < ApplicationController

	def index
		@product = Product.all
	end

	def show
		@products = Product.find(params[:id])
	end

	def edit
		@products = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(product_params)
		redirect_to admins_product_path(@product)
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to admins_products_path
	end

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