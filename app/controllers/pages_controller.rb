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
        #@followers_count passes the count of users who are currently following the logged in user
        @followers_count = Follower.where(following_id:current_user.id).count
        
        #@my_products fetches all of the products which the user has created
        #The query includes the with_attached_picture so that all of the attached pictures a preloaded before being displayed in the view
        @my_products = Product.where(user_id:current_user.id).with_attached_picture.all

    end

    def my_account
    end
    
    def my_favourites
        #@favourited_products uses the has_many favourited_products association in the User model to fetch all of the Product records the logged in user has favourited
        #The favourited_products association fetches the Product through the Favourites table using the user_id as a source
        #The with_attached_picture enables preloading of the follower_profile pictures improving load performance of the page
        @favourited_products = current_user.favourited_products.with_attached_picture.all.includes(:favourites)
    end

    def my_followings

        #@following_profiles uses the has_many following_profiles association in the User model to fetch all of the User records the logged in user has followed
        #The follow_profiles association fetches the profiles through the followers tabel using the the following_id (i.e. the foreign key representing the id of each followed User) as a source
        #The with_attached_picture enables preloading of the follower_profile pictures improving load performance of the page
        #The includes(:pictures) ensures that the product images associated with the followed user profile are eager loaded into the page also supporting performance
        @following_profiles = current_user.following_profiles.with_attached_picture.all.includes(:products)
    end

  


    private
        def set_search
            @search = params["search"]
        end

end