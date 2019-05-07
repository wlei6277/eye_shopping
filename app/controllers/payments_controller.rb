class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
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
    end

    def success
    end
end