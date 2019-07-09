class Sector < ActiveRecord::Base 
has_many :organizations
has_many :jobs, through: :organizations
end