class ProductsController < ApplicationController
def new
end
def index
  @search = Product.search do
    fulltext params[:search] 
    with(:category_id, params[:category_id])
  end
  @products = @search.results
end
def create
	@product = Product.new(product_params);

	@product.save
	redirect_to @product
end
def show
  @product = Product.find(params[:id])
end
def edit
  @product = Product.find(params[:id])
end
def update
  @product = Product.find(params[:id])
 
  if @product.update(product_params)
    redirect_to @product
  else
    render 'edit'
  end
end
def destroy
  @product = Product.find(params[:id])
  @product.destroy
 
  redirect_to products_path
end
private 
	def product_params
		params.require(:product).permit(:Name, :category_id, :Description)
	end
end
