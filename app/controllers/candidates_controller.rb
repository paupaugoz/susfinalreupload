class CandidatesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
  def index
		@candidates = Candidate.all
		if params[:q].present?
			@candidates = Candidate.where(last_name: params[:q])
		end
		render "candidates/index.html.erb"
	end

	def edit 
		@candidate = Candidate.find(params[:id])
	end

	def update
    @candidate = Candidate.find(params[:id])

    if @candidate.update(candidate_params())
      redirect_to candidate_path(@candidate.id)
    else
      render "candidates/edit.html.erb"
    end
  end

  def new
    @candidate = Candidate.new
    render "candidates/new.html.erb"
  end

  def create
    @candidate = Candidate.new(candidate_params())

    if @candidate.save
      redirect_to candidate_path(@candidate.id)
    else
      render "candidates/new.html.erb"
    end
  end

  def show
    @candidate = Candidate.find(params[:id])
    
    render "candidates/show.html.erb"
  end

  def destroy
    Candidate.where(params[:id]).delete_all
    redirect_to candidates_path
  end

  def candidate_params
    params.require(:candidate).permit!
  end
end
