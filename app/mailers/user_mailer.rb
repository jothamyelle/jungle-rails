class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def welcome_email(order, line_items)
    @order = order
    @line_items = line_items
    @url  = 'http://localhost:3000'
    mail(to: @order.email, subject: "Order Summary for Order ##{@order.id}")
  end

  def get_product_info product_id
    Product.find_by(id: product_id)
  end
  helper_method :get_product_info
end
