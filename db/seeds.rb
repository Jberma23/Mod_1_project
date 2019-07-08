require 'require_all'
require_relative '../config/environment.rb'
require_relative '../job.rb'

Job.find_or_create_by(title: "Junior Software Developer", description: "Works on a development team writing and maintaining code for computer applications", full_time: false, salary: 55000, page_url: "https://www.monster.com/job_1")
Job.find_or_create_by(title: "Senior Software Developer", description: "Writes code like a boss", full_time: true, salary: 120000, page_url: "https://www.monster.com/job_2")
Job.find_or_create_by(title: "Medical assistant", description: "Assist in medical stuff", full_time: true, salary: 40000, page_url: "https://www.monster.com/job_3")
Job.find_or_create_by(title: "Teacher", description: "Teaches stuff", full_time: true, salary: 25000, page_url: "https://www.monster.com/job_4")
Job.find_or_create_by(title: "Farmer", description: "Farms stuff", full_time: true, salary: 10000000, page_url: "https://www.monster.com/job_5")
Job.find_or_create_by(title: "Lunch lady", description: "Cooking up that good good", full_time: false, salary: 22000, page_url: "https://www.monster.com/job_6")

