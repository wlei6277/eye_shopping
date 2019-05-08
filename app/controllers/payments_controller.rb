class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def link_click
        byebug
        #This method is called when someone clicks on the "buy this item" link
        #The method should increment the user who created the products link_click_revenue by $0.1  
        #and redirect the person who clicked the link to url of the given product
        @product = Product.find(params[:id])
        @product_creator = User.find(@product.user_id)
        @product_creator.link_click_revenue += 0.1
        @product_creator.link_clicks += 1
        @product_creator.save
        redirect_to @product.url 
    end
    
    def stripe
        user_id = params[:data][:object][:client_reference_id]
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        product_id = payment.metadata.product_id
    end

    def payment
            stripe_session = Stripe::Checkout::Session.create(
                payment_method_types: ['card'],
                client_reference_id: current_user.id,
                line_items: [{
                    name: "Kendo Deals PTY LTD",
                    description: "Number of Kendo Deals #{@quantity}",
                    amount: @sumForStripe*100,
                    currency: 'aud',
                    quantity: 1,
                }],
                payment_intent_data: {
                    metadata: {
                        product_id: @dealIds.join(",")
                    }
                },
                success_url: 'http://localhost:3000/payments/success',
                cancel_url: 'http://localhost:3000/cancel'
            )
            @stripe_session_id = stripe_session.id
    end

    def success
    end
        
end