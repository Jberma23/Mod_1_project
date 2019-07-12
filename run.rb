require 'pry'
require 'rainbow'
require 'tty-prompt'
using Rainbow
require 'tty-prompt'
require_relative "./config/environment.rb"
require "sinatra/activerecord/rake"
require_relative "./app/models/job.rb"
require_relative "./app/models/organization.rb"
require_relative "./app/models/sector.rb"
require_relative "./app/models/department.rb"
require_relative "./db/seeds.rb"



        @prompt = TTY::Prompt.new

        def help_method
            # user_input = @prompt.select("Choose your input", ["1. Find highest paying job", "2. Search jobs by a given location", "3. Search jobs by full time status", "4. Search jobs by part time status", "5. Find the highest paying full time job", "6. Find the highest paying part time job", "7. Find the average salary by an organization"])
                
        
                puts Rainbow("Here is a list of all inputs available:").red
                puts ""
                puts ""
                puts  Rainbow("Job Inputs: ").blue
                puts ""
                puts  Rainbow("1. Find highest paying job").cyan
                puts  Rainbow("2. Search jobs by a given location").cyan
                puts  Rainbow("3. Search jobs by full time status").cyan
                puts  Rainbow("4. Search jobs by part time status").cyan
                puts  Rainbow("5. Find the highest paying full time job").cyan
                puts  Rainbow("6. Find the highest paying part time job").cyan
                puts ""
                puts ""
                puts   Rainbow("Organization Inputs: ").aqua
                puts ""
                puts  Rainbow("7. Find the average salary by an organization").green
                puts ""
                puts ""
                puts  Rainbow("Troubleshooting Inputs: ").red
                puts ""
                puts  Rainbow("quit").indianred
                puts  Rainbow("help").indianred
        end
        def welcome_message
                puts Rainbow("Welcome to our Job Analyzer!").cyan.underline
                puts ""
                help_method
        end
         

        def get_input
                input = ""
                while true
                        valid = ["","find highest paying job","1.","1","one", "search jobs by a given location", "2.", "2", "two", "search jobs by full time status","3.","3","three","search jobs by part time status","4.", "4", "four", "find the highest paying full time job", "5.","5","five", "find the highest paying part time job", "6.", "6", "six", "find the average salary by organization", "7.", "7", "seven", "help", "quit"]
                        puts ""
                        if valid.include?(input)
                                  puts Rainbow("Please enter a given input or number:").yellow
                        else 
                                  puts Rainbow("Please enter a valid input:" ).red.bold.underline
                        end
                        input = gets.chomp.downcase
                        if input == "find highest paying job" || input == "1." || input == "1" || input == "one"
                                puts ""
                                print "Title: #{Job.highest_pay[:title]}"
                                puts ""
                                print "Salary: #{Job.highest_pay[:salary]}"
                                puts ""
                        elsif input == "search jobs by a given location" || input == "2." || input == "2" || input == "two"
                                puts ""
                                print "Title: #{Job.search_by_location("Hermistonchester")[0][:title]}"
                                puts ""
                                print "Salary: #{Job.search_by_location("Hermistonchester")[0][:salary]}"
                                puts ""
                                print "Location: #{Job.search_by_location("Hermistonchester")[0][:location]}"
                                puts ""
                        elsif input == "search jobs by full time status" || input == "3." || input == "3" || input == "three"
                                puts ""
                                puts Job.search_by_full_time
                                puts ""
                        elsif input == "search jobs by part time status" || input == "4." || input == "4" || input == "four"
                                puts ""
                                puts Job.search_by_part_time
                                puts ""
                        elsif input == "find the highest paying full time job" || input == "5." || input == "5" || input == "five"
                                puts ""
                                puts "Title: #{Job.highest_pay_full_time[:title]}"
                                puts "Salary: #{Job.highest_pay_full_time[:salary]}"
                                puts "full-time"
                                puts ""
                        elsif input == "find the highest paying part time job" || input == "6." || input == "6" || input == "six"
                                puts ""
                                puts  "Title: #{Job.highest_pay_part_time[:title]}"
                                puts "Salary: #{Job.highest_pay_part_time[:salary]}"
                                puts "part-time"
                                puts ""
                        elsif input == "find the average salary by organization" || input == "7." || input == "7" || input == "seven"
                                puts ""
                                print "Salary: $#{Organization.all[1].avg_sal_org}"
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


#  Organization
#  Organization
#  puts Rainbow(Organization.top_org).white.underline
#  puts "checked and works "
#  puts Rainbow(Job.highest_pay_part_time).white.underline
#  puts Rainbow(Job.highest_pay_full_time).white.underline
#  puts ""
#  Job

