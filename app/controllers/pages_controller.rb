class PagesController < ApplicationController
    before_action :set_search, only: [:home]
    def home
        @departments = Department.all
        @colors = Product.colors.keys
        @products = Product.all
        if @search.present?
          @name = @search["name"]
          @products = Product.where("name ILIKE ?", "%#{@name}%")
        end
    end

    def my_board
        @products = Product.all
    end

    def my_account
    end
    
    # The my_favourites action utilises a join query to pull data for all of the products the user has favourited
    # and stores this in the @favourited_products instance variable to displayed on the index page
    def my_favourites
        @favourited_products = Product.joins(:favourites).where(favourites: {user_id: current_user.id})
    end

    def my_followers
    end

    private
        def set_search
            @search = params["search"]
        end
end