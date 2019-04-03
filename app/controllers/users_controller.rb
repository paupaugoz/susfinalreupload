class UsersController < ApplicationController
    
	def index
		@users = User.all
		render "users/users_summmary.html.erb"
	end
end