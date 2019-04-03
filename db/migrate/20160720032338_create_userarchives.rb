class CreateUserarchives < ActiveRecord::Migration
  def change
    create_table :userarchives do |t|
      t.string :name
      t.string :candidate
      t.string :position

      t.timestamps null: false
    end
  end
end
