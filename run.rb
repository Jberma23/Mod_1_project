require 'pry'
require_relative "./config/environment.rb"
require "sinatra/activerecord/rake"
require_relative "./app/models/job.rb"
require_relative "./app/models/organization.rb"
require_relative "./app/models/sector.rb"
require_relative "./app/models/department.rb"
require_relative "./db/seeds.rb"
def welcome_message
        puts "Welcome to our Job Analyzer!"
        end

# gen_data
create_job_department
# destroy_all
# welcome_message
puts ""
puts "*************"
puts "Highest pay"
puts "*************"
puts ""
print Job.highest_pay
puts ""
puts "*************"
puts "Search by location"
puts "*************"
print Job.search_by_location("Klockoburgh")
puts ""
puts "*************"
puts "Search by full time"
puts "*************"
puts ""
# binding.pry
puts Job.search_by_full_time
puts ""
puts "*************"
puts "Search by part time "
puts "*************"
puts ""
puts Job.search_by_part_time
puts ""
puts "*************"
puts "Search by highest pay part time "
puts "*************"
puts ""
puts Job.highest_pay_part_time
puts ""
puts "*************"
puts "Search by highest pay full-time "
puts "*************"
puts ""
puts Job.highest_pay_full_time
puts ""
puts ""
puts ""
puts "*************"
puts "list average salary of the first organization"
puts "*************"
# binding.pry
print Organization.average_salary_by_name("Waters-Armstrong-2")
print average_sal_with_name("Waters-Armstrong-2")
print "$#{Organization.all[name: "Waters-Armstrong-2"].avg_sal_org}"
puts ""
puts "*************"
puts "list jobs of an organization"
puts "*************"
print "$#{Organization.all[1].org_jobs}"
puts ""
puts "*************"
puts "list top five highest salaries"
puts "*************"
print "$#{Organization.all.top_five_orgs}"
puts ""
puts "*************"
# attribute_add