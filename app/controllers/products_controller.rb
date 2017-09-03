class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product

      # sub_subcategory: Product has to keep track of the sub_subcategory it belongs to
      # @sub_subcategory = SubSubcategory.find(params[:SubSubcategory_id])
      # @product = @sub_subcategory.product.create(product_params)

      # subcategory: Product has to keep track of the sub_subcategory it belongs to
      # category: Product has to keep track of the sub_subcategory it belongs to


    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
