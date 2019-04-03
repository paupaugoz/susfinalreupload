class Candidate < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :nickname, presence: true
	validates :slogan, presence: true, uniqueness: true

	belongs_to :position
	has_many :votes
	belongs_to :vote

	def to_s
  		"#{first_name} #{last_name}"
  	end
end
