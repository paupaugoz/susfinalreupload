class VotesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @candidates = Candidate.all.group_by(&:position_id)
    
  end

  def vote
      @vote = Vote.new
      @candidates = Candidate.all.group_by(&:position_id)  
  end

  def confirm_vote
    @vote = Vote.new(vote_params)
    @vote.user = current_user

    if @vote.save(vote_params)
      if current_user.votes.count >= Position.count
        redirect_to candidates_list_path, notice: "You have already exceeded your number of votes."
      else
        redirect_to vote_path, notice: "Vote successful!"
      end
    
    else
      render :vote
    end
  end

  def vote_history
    @votes = current_user.votes
  end
  
 def user_profile
   @votes = current_user.votes
   render "votes/user_profile.html.erb"
 end

  #private
    def vote_params
      params.require(:vote).permit!
    end


end
