class CheckoutController < ApplicationController
    def create
        @plan = Plan.find(params[:id])

        if @plan.nil?
            redirect_to root_path
            return 
        end
        
        #Set up stripe sesssion for payment
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
                name: @plan.name,
                description: @plan.description,
                amount: @plan.price_cents,
                currency: 'usd',
                quantity: 1,
            }],
            success_url: checkout_success_url,
            cancel_url: checkout_cancel_url
        )

        respond_to do |format|
            format.js # render create.js.erb
        end
    end

    def success
    end

    def cancel
        redirect_to root_path
    end
end