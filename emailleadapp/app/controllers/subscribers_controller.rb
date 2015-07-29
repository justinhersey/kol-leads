class SubscribersController < ApplicationController
	def index
		
	end

	def new
		@subscriber = Subscriber.new
	end

	def create
		@subscriber = Subscriber.new(subscriber_params)
		
		if @subscriber.save
			session[:modal] = true
    		redirect_to root_path
		else
			render 'new'
		end
	end

	private
	def subscriber_params
		params.require(:subscriber).permit(:email)
	end
end
