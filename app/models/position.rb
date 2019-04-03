class Position < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :candidates
end
