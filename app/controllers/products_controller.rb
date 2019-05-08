class ProductsController < ApplicationController


 before_action :set_product, only: [:show, :edit, :update, :destroy]
 before_action :set_favourite, only: [:show, :edit, :update, :destroy]
 before_action :color_enum, only: [:new, :edit, :create]
 before_action :department_list, only: [:new, :edit, :create]
 before_action :set_product, only: [:show, :edit, :update, :destroy, :link_click]
  # GET /products
  # GET /products.json
  #DELETE THIS BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    
    #@commments queries the comments table to fetch all of the comments associated with shown product 
    @comments  = Comment.where(product_id: @product.id)

    #@product_owner fetches the User record which originally created the product
    @product_owner = User.find(@product.user_id)
  end

  # GET /products/new
  def new
    #@departments holds all of the departments to select as options when creating a new product
    @product = Product.new
    @departments = Department.all
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to my_board_path, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def link_click
    
    #This method is called when someone clicks on the "buy this item" link
    #The method should increment the user who created the products link_click_revenue by 1 ($0.1)  
    #and redirect the person who clicked the link to url of the given product
    @product_creator = User.find(@product.user_id)
    if user_signed_in? 
      unless (@product_creator.id != current_user.id)
        if !@product_creator.link_click_total 
          @product_creator.link_click_total = 1
          @product_creator.link_click_revenue = 1
        else
          @product_creator.link_click_total += 1
          @product_creator.link_click_revenue += 1
        end
      end
    elsif !@product_creator.link_click_total 
      @product_creator.link_click_total = 1
      @product_creator.link_click_revenue = 1
    else
      @product_creator.link_click_total += 1
      @product_creator.link_click_revenue += 1
    end

    @product_creator.save
    redirect_to "http://#{@product.url_link}" 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    #set_favorite makes the favourite of a given product available to the view and helper functions
    def set_favourite
      if user_signed_in?
        @favourite = Favourite.where(user_id: current_user.id, product_id: set_product()).first
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:user_id, :name, :price, :department_id, :color, :url_link, :description, :picture)
    end

    def color_enum
      @colors = Product.colors.keys
    end

    def department_list
      @departments = Department.all
    end

end
 

