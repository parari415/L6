class CartsController < ApplicationController
    def show
      @cart=CartItem.where(cart_id: current_cart.id)
      
      array=[]
      @cart.each do |item|
        array << item.qty * Product.find(item.product_id).price 
      end
      @total = array.sum
    end
end
