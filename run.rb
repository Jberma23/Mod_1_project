require 'pry'
require_relative "./config/environment.rb"
require "sinatra/activerecord/rake"
require_relative "./app/models/job.rb"
require_relative "./app/models/organization.rb"
require_relative "./app/models/sector.rb"
require_relative "./app/models/department.rb"
require_relative "./db/seeds.rb"

gen_data
print Job.highest_pay
puts ""
puts "*************"
puts ""
print Job.search_by_location("Luigiton")
# puts Job.search_by_full_time
# attribute_add