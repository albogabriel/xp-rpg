class Iteration < ActiveRecord::Base
	has_many :stories, :foreign_key => "iteration_id"
end
