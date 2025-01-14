class CartItemsController < ApplicationController
    
    def new
       @cart_item = CartItem.new
    #   @cartitem.product_id=params[:id]
    end
    
    def create
        c = CartItem.new(product_id: params[:cart_item][:product_id] ,
        qty: params[:cart_item][:qty] ,
        cart_id: current_cart.id)
        c.save
        redirect_to cart_path(current_cart.id)
    end
    
    def destroy
        CartItem.find(params[:id]).destroy
        redirect_to cart_path(current_cart.id)
    end
end
