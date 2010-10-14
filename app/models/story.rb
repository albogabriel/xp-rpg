class Story < ActiveRecord::Base
	belongs_to :iteration, :class_name => Iteration
end
