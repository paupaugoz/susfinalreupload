class AddSupermoreToUser < ActiveRecord::Migration
  def change
            add_column :users, :votecount, :integer

  end
end
