class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.text :comments

      t.timestamps null: false
    end
  end
end
