class ProductsController < ApplicationController
    layout 'product'
    def index
        @products = Product.all
    end
end
