class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  before_action :authorized

  # GET /orders
  def index
    @orders = Order.all.order('created_at DESC')

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    @user = logged_in_user
    @order = @user.orders.create(order_params)

    @order.save
    render json: @order
  
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.permit(:name, :email, :phone, :address, :total, cartitems:[:id, :name, :count, [avatar: {}], :price, :description, :category, :created_at,
        :updated_at, :user_id])
    end
end
