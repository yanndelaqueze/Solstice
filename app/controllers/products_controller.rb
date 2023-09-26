class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def show
    @order_item = OrderItem.new
  end

  def new
    if params[:category_id]
      @category = Category.find(params[:category_id])
    else
      @categories = Category.all
    end
    @product = Product.new
  end

  def create
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @product = Product.new(product_params)
      @product.category = @category
    else
      @categories = Category.all
      @product = Product.new(product_params)
      @product.category_id = params[:product][:category_id]
    end
    if @product.save
      redirect_to category_path(@product.category), notice: 'Product was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to category_path(@product.category), notice: 'Product was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to request.referrer || root_url
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :min_price, :available, :featured, :order, :photo)
  end
end
