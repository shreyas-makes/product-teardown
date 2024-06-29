class TeardownsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product

  def show
    @teardown = @product.teardowns.find(params[:id])
  end

  def new
    @teardown = @product.teardowns.new
  end

  def create
    @teardown = @product.teardowns.new(teardown_params)
    if @teardown.save
      redirect_to [@product, @teardown], notice: 'Teardown created successfully.'
    else
      render :new
    end
  end

  def edit
    @teardown = @product.teardowns.find(params[:id])
  end

  def update
    @teardown = @product.teardowns.find(params[:id])
    if @teardown.update(teardown_params)
      redirect_to [@product, @teardown], notice: 'Teardown updated successfully.'
    else
      render :edit
    end
  end

  private

  def set_product
    @product = current_user.products.find(params[:product_id])
  end

  def teardown_params
    params.require(:teardown).permit(:strategy, :playstore, :positioning, :onboarding, :ftue, :jtbd, :defensibility, :trust_reliability, :product_design)
  end
end
