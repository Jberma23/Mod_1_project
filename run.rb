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



gen_data
# welcome_message
puts ""
puts "*************"
puts ""
print Job.highest_pay
puts ""
puts "*************"
puts ""
print Job.search_by_location("Luigiton")
puts ""
puts "*************"
puts ""
# binding.pry
puts Job.search_by_full_time
puts ""
puts "*************"
puts ""
# attribute_add