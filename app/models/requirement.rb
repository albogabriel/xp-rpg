class Requirement < ActiveRecord::Base
  belongs_to :iteration
  belongs_to :story
end
