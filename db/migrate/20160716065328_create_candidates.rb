class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.text :slogan

      t.timestamps null: false
    end
  end
end
