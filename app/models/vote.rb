class Vote < ActiveRecord::Base
	belongs_to :candidate
	belongs_to :user
	#has_many :users
	has_many :candidates
	validates :candidate, presence:true
	

end
