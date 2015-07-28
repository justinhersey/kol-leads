class SubscribersController < ApplicationController

	def new
		@subscriber = Subscriber.new
	end

	def create
		@subscriber = Subscriber.new(subscriber_params)
		if @subscriber.save
			redirect_to @subscriber, alert: "User created successfully."
    	else
        	render :new, alert: "Error creating user."
    	end
	end

	def subscriber_params
		params.require(:subscriber).permit(:email)
	end

end
