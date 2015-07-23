class CategoriesController < ApplicationController
def new
end
def create
	@category = Category.new(category_params);

	@category.save
	redirect_to @category
end
def show
  @category = Category.find(params[:id])
end
def edit
  @category = Category.find(params[:id])
end
def update
  @category = Category.find(params[:id])
 
  if @category.update(category_params)
    redirect_to @category
  else
    render 'edit'
  end
end

def index
 @categories = Category.all
end

private 
	def category_params
		params.require(:category).permit(:Name, :Description, :Priority)
	end
end
