class PagesController < ApplicationController
	
	def home
		render "pages/index.html.erb"
	end

	def about
		render "pages/about.html.erb"
	end
	
	def users_summary
		@user = User.all
		@archive = Userarchive.all
		render "users/users_summary.html.erb"
	end
	
	def archive_user
		id = params[:id]
		@user = User.find(id.to_i)
		@votes = current_user.votes
		
		@votes.each do |x|
			@archive = Userarchive.new
			@archive.name = @user.email
			@archive.candidate = "#{x.candidate.first_name} #{x.candidate.last_name}" 
			@archive.position = x.candidate.position_id
			@archive.save
		end
		@user.destroy!
		
		redirect_to users_path
	end
	
end
