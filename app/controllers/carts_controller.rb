class CartsController < ApplicationController

    def create
    end

    def index
    	@products = Product.all
    end

    def update
    end

    def destroy
    end

end
