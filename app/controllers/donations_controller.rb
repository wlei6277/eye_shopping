class DonationsController < ApplicationController
    before_action :donations_params, only: [:create]
    before_action :set_donation, only: [:submit]
    skip_before_action :verify_authenticity_token
    
    def create
        @donation = Donation.create(donations_params)
        @donation.amount = @donation.amount*100
        @donation.save
        redirect_to submit_donation_path(@donation)
    end
    def submit
        @donee = User.find(@donation.donee_id)
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
            success_url: 'http://localhost:3000/donations/success',
            cancel_url: 'http://localhost:3000/cancel'
        )
        @stripe_session_id = stripe_session.id
        
    end

    def success
    end

    def cancel
    end

    def stripe
        user_id = params[:data][:object][:client_reference_id]
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        @donation = Donation.where(donee_id: payment_id.donee_id, donor_id: payment_donor_id).first
        @donation.confirmed = true
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