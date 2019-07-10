require 'require_all'
require 'faker'
include Faker
require_relative '../config/environment.rb'
require_relative "../app/models/job.rb"
require_relative "../app/models/organization.rb"
require_relative "../app/models/sector.rb"
Job.destroy_all
Organization.destroy_all
Sector.destroy_all
# Job.find_or_create_by(title: "Junior Software Developer", description: "Works on a development team writing and maintaining code for computer applications", full_time: false, salary: 55000, page_url: "https://www.monster.com/job_1", location: "Florida")
# Job.find_or_create_by(title: "Senior Software Developer", description: "Writes code like a boss", full_time: true, salary: 120000, page_url: "https://www.monster.com/job_2", location: "Washington D.C.")
# Job.find_or_create_by(title: "Medical assistant", description: "Assist in medical stuff", full_time: true, salary: 40000, page_url: "https://www.monster.com/job_3", location: "Los Angeles")
# Job.find_or_create_by(title: "Teacher", description: "Teaches stuff", full_time: true, salary: 25000, page_url: "https://www.monster.com/job_4", location: "Washington D.C.")
# Job.find_or_create_by(title: "Farmer", description: "Farms stuff", full_time: true, salary: 10000000, page_url: "https://www.monster.com/job_5", location: "NYC")
# Job.find_or_create_by(title: "Lunch lady", description: "Cooking up that good good", full_time: false, salary: 22000, page_url: "https://www.monster.com/job_6",location: "NYC")
100.times do 
    Job.find_or_create_by(
    title: Faker::Company.profession,
    description: Faker::Lorem.sentence,
    full_time: Faker::Boolean.boolean,
    salary: "$#{Faker::Number.number(5).insert(2, ",")}",
    page_url: Faker::Internet.url,
    location: Faker::Address.city
    )
end

40.times do 
    Organization.find_or_create_by(
    name: Faker::Company.name
    )
end
    
20.times do 
    Sector.find_or_create_by(
        name: Faker::Commerce.department
    )
end
















