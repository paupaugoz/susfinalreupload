class AddToVotes < ActiveRecord::Migration
  def change
  	add_column :votes, :user_id, :integer
  	add_column :votes, :candidate_id, :integer
  end
end
