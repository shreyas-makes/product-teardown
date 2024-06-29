class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = current_user.products
  end

  def show
    @product = current_user.products.find(params[:id])
  end

  def new
    @product = current_user.products.new
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Product created successfully.'
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end
end
