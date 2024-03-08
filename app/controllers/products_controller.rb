class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.create(product_params)

    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  def product_params
    params.require(:product).permit(:name,:description,:quantity)
  end
end
