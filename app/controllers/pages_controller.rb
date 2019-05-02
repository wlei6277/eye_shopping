class PagesController < ApplicationController
    def home
        @products = Product.all
    end
    def myboard
        @products = Product.all
    end
    def myaccount
    end
end