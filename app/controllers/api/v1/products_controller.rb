class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]
  # before_action :authorized

  # GET /products
  def index
    @products = Product.all.order('created_at DESC')

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products

  def create
    @user = logged_in_user
    if @user.admin == true
      @product = @user.products.create(product_params)
      if @product.valid?
        render json: { product: @product }, status: 200
      else
        render json: { error: @product.errors }, status: 400
      end
    else
      render json: { status: "you're not an admin" }, status: 400
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.permit(:name, :price, :description, :category, :avatar)
    end
end
