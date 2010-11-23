class Iteration < ActiveRecord::Base
	has_many :stories
	has_many :requirements

		validates :label, :presence => true
end
