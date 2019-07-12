class Sector < ActiveRecord::Base 
has_many :departments
has_many :organizations, through: :departments
has_many :jobs, through: :departments
end
