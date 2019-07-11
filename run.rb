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
def help 
puts "These are the "
end



gen_data
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
puts ""
# puts Job.highest_pay_part_time
puts ""
puts "*************"
puts ""
puts ""
puts "*************"
print "$#{Organization.first.avg_sal_org}"
puts ""
puts "*************"
# attribute_add