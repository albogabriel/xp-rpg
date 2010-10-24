class Story < ActiveRecord::Base
	belongs_to :iteration
	
		validates :title, :presence => true
		validates :description, :presence => true,
		                        :length => { :minimum => 5 }
end
