class PagesController < ApplicationController
    before_action :set_search, only: [:home]
    def home
        @departments = Department.all
        @colors = Product.colors.keys
        @products = Product.with_attached_picture.all.includes(:favourites)
        if @search.present?
          @name = @search["name"]
          @products = Product.where("name ILIKE ?", "%#{@name}%").with_attached_picture.all.includes(:favourites)
        end
   
        #CATEGORIZE
        # @prod = Product.includes(:department).group_by { |product| product.department.id }
        @categorize = params["categorize"]
        if @categorize.present?
            @dep = @categorize["dep"]
            #@categorize["dep"] will print me out the department.id
            @products = Product.where(department_id: @dep)
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