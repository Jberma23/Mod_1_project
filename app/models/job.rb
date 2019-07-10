class Job < ActiveRecord::Base 
    belongs_to :organization
    has_one :department
    has_one :sector, through: :department
    
end
 