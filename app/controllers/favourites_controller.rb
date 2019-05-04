class FavouritesController < ApplicationController
  before_action :set_favourite, only: [:destroy]

  # GET /favourites
  # GET /favourites.json
  
  def index
  end

  # GET /favourites/1
  # GET /favourites/1.json
  def show
  end

  # GET /favourites/new
  def new
    @favourite = Favourite.new
  end

  # GET /favourites/1/edit
  def edit
  end

  # POST /favourites
  # POST /favourites.json
  def create
    #creates the relationship between the currently logged in user and the product they wish to favourite
    #this action is called when the user clicks the favourite button on a product image (favouratible products are multiple sections of Eyeshopper e.g. home page / another users board / the view page for a product etc...)
    #a following is created by using the following parameters:
    #  -the id of the user currently logged in; and 
    #  -the id of the product which was favourited (where the button resides)  
    
    @favourite = Favourite.new(favourite_params)
    @favourite.save

  end

  # PATCH/PUT /favourites/1
  # PATCH/PUT /favourites/1.json
  def update
    respond_to do |format|
      if @favourite.update(favourite_params)
        format.html { redirect_to @favourite, notice: 'Favourite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favourite }
      else
        format.html { render :edit }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  # Destroy action is called when the user clicks the button to unfavourite a product
  
  def destroy
    @favourite.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.  
    # The set_favourite action is only invoked for the destroy action
    # The favourite is passed through the helper function on the _like partial
    
    def set_favourite
      @favourite = Favourite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # We only allow the parameters to enable a user favourite a product:
    #  > user_id: the id of the logged in user
    #  > product_id: the id of the product the user has favourited
    def favourite_params
      params.permit(:user_id, :product_id)    
    end
end
