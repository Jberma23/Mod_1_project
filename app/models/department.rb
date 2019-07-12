class Department <ActiveRecord::Base
    belongs_to :organization 
    belongs_to :sector
    belongs_to :job
end