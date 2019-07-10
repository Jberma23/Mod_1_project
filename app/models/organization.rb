class Organization < ActiveRecord::Base 
has_many :departments
has_many :sectors, through: :departments
has_many :jobs
end