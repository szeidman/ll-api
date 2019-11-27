class ProductsController < ApplicationController
  before_action :set_product, only: %i[show update destroy]
  # before_action :authenticate_user!

  # GET /products
  # GET /products.json
  def index
    if params[:user_id]
      if User.find(params[:user_id])
        @user = User.find(params[:user_id])
        @products = @user.products
        render json: @products
      end
    else
      @products = Product.all
      render json: @products
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show; end

  # POST /products
  # POST /products.json
  def create
    if params[:user_id]
      if User.find(params[:user_id]) == current_user
        @product = current_user.products.build(product_params)
        render :show, status: :created, location: @product if @product.save
      else
        render json: { errors: ['You are not authorized to make changes for this user.'] }, status: :unauthorized
      end
    else
      @product = Product.new(product_params)
      if @product.save
        render :show, status: :created, location: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    if params[:user_id]
      if User.find(params[:user_id]) == current_user
        if @product.users.find_by(id: current_user.id)
          @product.users.delete(current_user.id)
        else
          @product.users << current_user
        end
        render json: @user.products
      else
        render json: { errors: ['You are not authorized to make changes for this user.'] }, status: :unauthorized
      end
    else
      if @product.update(product_params)
        render :show, status: :ok, location: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
