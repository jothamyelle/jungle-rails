class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def get_average(product)
    @product = product
    @reviewAvgs = Review.where(product_id: @product.id)
    @reviewAvgs.average(:rating)
  end
  helper_method :get_average

  def show
    @reviews = Review.where(product_id: params[:id])
    @reviewAvg = @reviews.average(:rating)
    @product = Product.find params[:id]
  end

  def get_user(user_id)
    User.find_by(id: user_id)
  end
  helper_method :get_user

end
