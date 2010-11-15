class Story < ActiveRecord::Base
	belongs_to :iteration
	has_many :requirements
	
		validates :title, :presence => true
		validates :description, :presence => true,
		                        :length => { :minimum => 5 }  
end
