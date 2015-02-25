class ProductsController < ApplicationController

  def index
    @products = Product.all
    # @company = Company.find(params[:company_id])
  end

  def new
    @product = Product.new
  end


  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product successfully created'
    else
      redirect_to new_product_path, notice: 'You need to fill in a company'
    end

  end

  def show
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :company_id)
  end

end
