class UsersController < ApplicationController
    before_action :set_follower, only: [ :destroy]
    before_action :set_displayed_user, only: [:show, :edit, :update, :destroy]
    # GET /users
    # GET /users.json
    # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def index
    end
    
    # GET /users/1
    # GET /users/1.json
    
    #The show action allows the user to see other users (i.e. the one being displayed) page 
    def show
      #@followers_count passes the count of users who are currently following the displayed user
      @followers_count = Follower.where(following_id:@displayed_user.id).count
      
      #@donation_total calculates the total amount of donations the displayed user has recieved and passes this to the view 
      #@donation_total is converted into dollar amounts by dividing by 100 (the amount is stored in the database as cents)  
      @donation_total = Donation.where(donee_id: @displayed_user.id, confirmed: true).calculate(:sum, :amount)/100
    end
    
    # GET /users/new
    # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def new
    end
    
    # GET /users/1/edit
    # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def edit
    end
    
    # POST /users
    # POST /users.json
    # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def create
    end
    
    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def update
    end
    
    # DELETE /users/1
    # DELETE /users/1.json
    # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    def destroy
    end


    
    private
      # Use callbacks to share common setup or constraints between actions.  
      # The set_user action is required to find the user to display when navigating to other users boards (using the show action)
      def set_displayed_user
        @displayed_user = User.find(params[:id])
      end
      
      # The set_follower action is required to make the following between the logged in user and displayed user available to the view
      # Therefore allowing a user to unfollow the displayed user 
      def set_follower
        @follower = Follower.where(follower_id: current_user.id, following_id:set_displayed_user().id).first
      end
      

      # Never trust parameters from the scary internet, only allow the white list through.
      # DELETE THIS METHOD BEFORE SUBMISSION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      def user_params
      end
end