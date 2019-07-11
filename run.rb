require 'pry'
require_relative "./config/environment.rb"
require "sinatra/activerecord/rake"
require_relative "./app/models/job.rb"
require_relative "./app/models/organization.rb"
require_relative "./app/models/sector.rb"
require_relative "./app/models/department.rb"
require_relative "./db/seeds.rb"

# gen_data


# attribute_add

# gen_data
# create_job_department
# # destroy_all
# # welcome_message
# puts ""
# puts "*************"
# puts "Highest pay"
# puts "*************"
# puts ""
# print Job.highest_pay
# puts ""
# puts "*************"
# puts "Search by location"
# puts "*************"
# print Job.search_by_location("Klockoburgh")
# puts ""
# puts "*************"
# puts "Search by full time"
# puts "*************"
# puts ""
# # binding.pry
# puts Job.search_by_full_time
# puts ""
# puts "*************"
# puts "Search by part time "
# puts "*************"
# puts ""
# puts Job.search_by_part_time
# puts ""
# puts "*************"
# puts "Search by highest pay part time "
# puts "*************"
# puts ""
# puts Job.highest_pay_part_time
# puts ""
# puts "*************"
# puts "Search by highest pay full-time "
# puts "*************"
# puts ""
# puts Job.highest_pay_full_time
# puts ""
# puts ""
# puts ""
# puts "*************"
# puts "list average salary of the first organization"
# puts "*************"
# # binding.pry
# # print Organization.average_salary_by_name("Waters-Armstrong-2")
# # print "$#{Organization.avg_sal_org("Waters-Armstrong-2")}"
# puts ""
# puts "*************"
# puts "list jobs of an organization"
# puts "*************"
# print "$#{Organization.all[3].org_jobs}"
# puts ""
# puts "*************"
# puts "list top five highest salaries"
# puts "*************"
# print "#{Organization.all.top_five_orgs}"
# puts ""
# puts "*************"







        def help_method
                puts "Here is a list of all inputs available:"
                puts ""
                puts "Job Inputs: "
                puts ""
                puts "1. Find highest paying job"
                puts "2. Search jobs by a given location"
                puts "3. Search jobs by full time status"
                puts "4. Search jobs by part time status"
                puts ""
                puts "Organization Inputs: "
                puts "5. Find the average salary by an organization"
                puts ""
                puts "Trouble Shooting Inputs: "
                puts "quit"
                puts "help"
        end
                def welcome_message
                puts "Welcome to our Job Analyzer!"
                puts ""
                help_method
                end


        def get_input
                input = ""
                while true
                        valid = ["","find highest paying job","1.","1","one", "search jobs by a given location", "2.", "2", "two", "search jobs by full time status","3.","3","three","search jobs by part time status","4.", "four","find the average salary by organization","5.","5","five", "help", "quit"]
                        puts ""
                        if valid.include?(input)
                                puts "Please enter a given input or number:"
                        else 
                                puts "Please enter a valid input:"
                        end
                                input = gets.chomp.downcase
                                if input == "find highest paying job" || input == "1." || input == "1" || input == "one"
                                        puts ""
                                        print Job.highest_pay
                                        puts ""
                                elsif input == "search jobs by a given location" || input == "2." || input == "2" || input == "two"
                                        puts ""
                                        print Job.search_by_location("Hermistonchester")
                                        puts ""
                                elsif input == "search jobs by full time status" || input == "3." || input == "3" || input == "three"
                                        puts ""
                                        puts Job.search_by_full_time
                                        puts ""
                                elsif input == "search jobs by part time status" || input == "4." || input == "4" || input == "four"
                                        puts ""
                                        puts Job.search_by_part_time
                                        puts ""
                                elsif input == "find the average salary by organization" || input == "5." || input == "5" || input == "five"
                                        puts ""
                                        print "$#{Organization.all[1].avg_sal_org}"
                                        puts ""
                                elsif input == "help"
                                        puts "\n***************************\n"
                                        help_method
                                        puts "\n***************************\n"
                                        input = ""
                                elsif input == "quit"
                                        exit
                                end
       	                end
             
        end		
			


welcome_message
get_input

