class FollowersController < ApplicationController
  before_action :set_follower, only: [:show, :edit, :update, :destroy]

  # GET /followings
  # GET /followings.json
  # TO DO!!!!!!!!!!!!!!!!
  def index
    @followed_users = User.joins(:favourites).where(favourites: {user_id: current_user.id})
  end

  # GET /followings/1
  # GET /followings/1.json
  # DELETE BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def show
  end

  # GET /followings/new
  # DELETE BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def new
    @follower = Follower.new
  end

  # GET /followings/1/edit
  # DELETE BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def edit
  end

  # POST /followings
  # POST /followings.json
  def create
    #create a following between the user and person they wish to follow
    #this action is called when the user clicks the favourite button on a product image (favouratible products are multiple sections of Eyeshopper e.g. home page / another users board / the view page for a product etc...)
    #a following is created by using the following parameters:
    #  -the id of the user currently logged in; and 
    #  -the id of the product which was favourited (where the button resides)
    @follower = Follower.new(follower_params)
    @follower.save
  end

  # PATCH/PUT /followings/1
  # PATCH/PUT /followings/1.json
  # DELETE BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def update
    respond_to do |format|
      if @follower.update(follower_params)
        format.html { redirect_to @follower, notice: 'Follower was successfully updated.' }
        format.json { render :show, status: :ok, location: @follower }
      else
        format.html { render :edit }
        format.json { render json: @follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followings/1
  # DELETE /followings/1.json
  # The destroy action is called when the user clicks the unfollow link in the _follow partial (only displayed if the logged in user is currently following the displayed user)
  # @follower is derived through the set_follower before action - locates the follower using the ids of the logged in user and the displayed user
  def destroy
    @follower.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follower
      @follower = Follower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # Here permit only the params required to create a new follower, i.e.:
    #  > follower_id: The id of the user currently logged in
    #  > folllowing_id: The id of the displayed user which is passed through when the user clicks the follow link on the _follow partial
    def follower_params
      params.permit(:follower_id, :following_id)
    end
end
