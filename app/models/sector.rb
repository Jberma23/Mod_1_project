class Sector < ActiveRecord::Base 
has_many :organizations
has_many :jobs, through: :organizations

@@all = []

def initialize(name)
    @name = name
    self.class.all << self
end

def self.all
    @@all
end

def 



end

# def welcome_message
#     puts "welcome to our Monster Analyzer"
#     end
    
#     def prompt 
#         puts "Please enter a field you are interested in"
#         answer = gets.chomp
#     end 
    
#     def field_job_search
#     # return the top 5 highest paying jobs in that field
#     end
    
#     def field_location_search 
#     # return top 5 highest paying jobs in that location 
#     end
    
#     def most_prominant_field
#     # return specific fields with most jobs in it
#     end 
    
#     def least_prominant_field
#     #field with least jobs
#     end
    
#     def most_common_job
#     #return most common job title in any field 
#     end
    
#     def top_five_orgs
#     # return array of orgs which have the most job postings
#     end
    
#     def highest_paying_job_in_field
#     # return array of top paying jobs in that field
#     end
#     def highest_paying_job_in_any_field
#         # return array of top paying jobs in any field
#     end
    
#     def highest_paying_sector
#     # helps you consider sectors by returning an array of top paying sectors
#     end
    
#     def highest_paying_organization
#     #  returns array of organizations with the highest paying jobs
#     #  average salary of each org and max avg_sal
#     end
    
#     def avg_sal_org
#     end
    
#     def avg_field_sal
#     end
    
#     def location_jobs
#     # returns array of jobs in a 
#     end
    
#     def location_highest_paying_job
#     end
#     # Def prompt
#     # Puts “what sector do you work in?”
#     # Answer = gets.chomp
#     # Return page url matching answer 
#     # End 
    
    
    
#     # tables we need:
    
#     # jobs (job_title, job_description, job_type, salary, page url)
#     # organization (job_title, location )
#     # sector(sector_name, organization_id, job_id)
    