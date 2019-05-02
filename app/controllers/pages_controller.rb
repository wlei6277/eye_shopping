class PagesController < ApplicationController
    def home
        @products = Product.all
        @search = params["search"]

        if @search.present?
          @name = @search["name"]
          @products = Product.where("name ILIKE ?", "%#{@name}%")
        end
    end

    def myboard
        @products = Product.all
        
    end

    def myaccount
    end
   
    
end