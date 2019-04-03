class ChangeCandidatesTable < ActiveRecord::Migration
  def change
  	remove_column :candidates, :position
  	add_column :candidates, :position_id, :integer
  end
end
