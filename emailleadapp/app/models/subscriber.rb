class Subscriber < ActiveRecord::Base
	validates :email, confirmation: true
	validates :email, presence: true
end
