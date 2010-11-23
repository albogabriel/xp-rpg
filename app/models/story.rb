class Story < ActiveRecord::Base
	belongs_to :iteration
	has_many :requirements
	
		validates :title, :presence => true
		validates :description, :presence => true,
		                        :length => { :minimum => 5 }
    validates_numericality_of   :estimate,
                                :only_integer => true   
                      
end