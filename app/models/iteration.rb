class Iteration < ActiveRecord::Base
	has_many :stories
	has_many :requirements
end
