class ProductsController < ApplicationController
	def new
		@product = Product.new
	end

	def index
		@products = Product.all
	end

	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end

	def create 
		@product = Product.new(product_params)

		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def show 
		@product = Product.find(params[:id])
	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :ref_pic)
	end


end
