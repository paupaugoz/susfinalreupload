class PositionsController < ApplicationController

		def show
			@position = Position.find(params[:id])
			@candidates = @position.candidates
			render "positions/show.html.erb"
		end
		

end