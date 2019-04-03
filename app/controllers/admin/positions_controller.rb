module Admin
	class PositionsController < ApplicationController

		def show
			@position = Position.find(params[:id])
			@candidates = @position.candidates
			render "admin/positions/show.html.erb"
		end

	end
end