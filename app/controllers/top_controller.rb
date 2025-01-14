class TopController < ApplicationController
    def main
    #   @products = Product.all 
    redirect_to '/products'
    end
end
