class PagesController < ApplicationController
    before_action :set_search, only: [:home]
    #before_action :set_search, only: [:home]  
    #before_action :search_params, only: [:home]
    def home
        @departments = Department.all
        @colors = Product.colors.keys
        @products = Product.with_attached_picture.all.includes(:favourites)
        @max_price = Product.maximum("price")
        
        if @search.present?
          @name = @search["name"]
          @products = Product.where("name ILIKE ?", "%#{@name}%").with_attached_picture.all.includes(:favourites)
        end
   
        #CATEGORIZE
         @categorize = params["categorize"]
         if @categorize.present?
             @dep = @categorize["dep"]
             @color = @categorize["color"]
             @bottom_price = @categorize["bottom_price"]
             @top_price = @categorize["top_price"]
            #  @categorize["dep"] will print me out the department.id
             @products = Product.where(department_id: @dep, color:@color, price:@bottom_price..@top_price)
         end

    end

    def my_board
        @products = Product.all
    end

    def my_account
    end
    
    # The my_favourites action finds all of records associated with the user current logged in
    # An includes method is chained on to this method to preload the product associated with each favourite
    
    def my_favourites
        @favourites = Favourite.where(user_id: current_user.id).includes(:product)
    end

    # The my_followings makes the following data available to the view:
    #  > @followings: all the users who the currently follows - this uses a joins query on the user table finding all the records where the follower id is the current user
    # SOMETHING ABOUT WITH ATTACHED PICTURE ENABLES PRELOADING _____ IF THIS ACTUALLY WORKS
    # COMMENTED OUT QUERY DOES NOT WORK.... WHY??????
    # NEED TO WRITE SOMETHING ABOUT THE BOTTOM QUERY THEN
    def my_followings
        # @followings = User.joins(:followers).where(followers: {follower_id: current_user.id}).with_attached_picture.all
        @followings = Follower.where(follower_id: current_user.id).includes(:following)
    end

  


    private
        def set_search
            @search = params["search"]
        end

end