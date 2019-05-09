class DonationsController < ApplicationController
    before_action :donations_params, only: [:create]
    before_action :set_donation, only: [:submit]
    skip_before_action :verify_authenticity_token
    
    def create
        #create a new donation record using the params sent through the donation form
        #this form can be found in the user show view
        @donation = Donation.create(donations_params)
        
        #convert amount from form (cents by default) into dollars 
        @donation.amount = @donation.amount*100
        @donation.save

        #redirect to the submit view where the user confirms the donation  
        redirect_to submit_donation_path(@donation)
    end
    def submit
        #fetch the donation that was just created in the database
        @donee = User.find(@donation.donee_id)

        #create a stripe session using the data from the donation record in @donee 
        stripe_session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            client_reference_id: current_user.id,
            line_items: [{
                name: @donee.name,
                description: "Donation to #{@donee.name}",
                amount: @donation.amount,
                currency: 'aud',
                quantity: 1,
            }],
            payment_intent_data: {
                metadata: {
                    message: @donation.message,
                    amount: @donation.amount,
                    donee_id: @donee.id,
                    donor_id: current_user.id
                }
            },
            
            success_url: 'https://eye-shopping.herokuapp.com/donations/success',
            cancel_url: 'https://eye-shopping.herokuapp.com/donations/cancel'
        )

        #@stripe_session_id is used in the javascript tag on the submit view to open
        #the Stripe session once the user clicks submit
        @stripe_session_id = stripe_session.id
        
    end

    #success view where the user is redirected by Stripe upon succesful checkout
    def success
    end

    #cancel view where the user is redirected by Stripe upon unsuccesful checkout
    def cancel
    end

    #stripe accepts post requests recieved through Stripe webhooks
    #these occur when checkout session has been completed
    #the purpose of the webhook is update confirmation status of the donation record in the database 
    def stripe
        user_id = params[:data][:object][:client_reference_id]
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        @donation = Donation.where(donee_id: payment.metadata.donee_id, donor_id: payment.metadata.donor_id).first
        @donation.confirmed = true
        @donation.save
    end


    private
    def set_donation
        #finding the donation to submit and show
        @donation = Donation.find(params[:id])
    end
    
    def donations_params
        #whitelisting parmas to create a donation
        params.permit(:donor_id, :donee_id, :amount, :message)
    end

end