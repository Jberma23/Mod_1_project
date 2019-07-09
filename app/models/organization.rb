class Organization < ActiveRecord::Base 
has_many :jobs
has_many :sectors
end