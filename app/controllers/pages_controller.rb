class PagesController < ApplicationController
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

          
        # if @categorize.present?
        #     @dep = @categorize["dep"]
        #     @color = @categorize["color"]
           
        #     #@categorize["dep"] will print me out the department.id
        #     @products = Product.includes(:dep => { color: "color"})
        #     # @prod = Product.includes(:department).group_by { |product| product.department.id }


# Author.joins(:dep).where(dep: {color: “color”})
#             #gem "squeel"
        # end



    end

    def my_board
        @products = Product.all
    end

    def my_account
    end
    
    # The my_favourites action utilises a join query to pull data for all of the products the user has favourited
    # and stores this in the @favourited_products instance variable to displayed on the index page
    def my_favourites
        @favourites = Favourite.where(user_id: current_user.id).includes(:product)
    end

    def my_followers
    end

  


    private
        def set_search
            @search = params["search"]
        end

        def search_params
            params.require(:categorize).permit(:color,:dep,:price).to_h if params[:categorize]
        end
end