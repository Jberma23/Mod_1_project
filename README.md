# Mod_1_project
Repository for Monster Analyzer
Chine: if you are reading this please press command, K, and Z at the same time to enter zen mode

                        Welcome to the Monster Job analyzer!!
## Background:
Monster Job Analyzer is designed to search through a large database of job postings to find specific data or return results for a specific query that a user inputs. 
       
We created we generate fake job postings, organizations, sectors, and departments using the faker gem.
in total our database consists of 700 jobs, 300 organizations(containing varying number of jobs), 297 sectors which could for example be "IT", "Finance", or "Medical", and finally 62 departments linking specific
parts of an organizations to a sector and a job posting to a specific department. In our model their are many sectors which one may call a "field" and many organizations, a large organization such as IBM may have many jobs in many areas such as "financial" and "tech". Using this relationship we set each organization to have many departments and one sector to have many departments. One job posting belongs to a single department and one organization has many jobs. Futhermore, we created 4 models one for Department, Job, Organization, and Sector. 

## Methods:

The job model contains several methods that allows a user to find the highest paying job posting, search jobs by location, search by part-time and full-time, as well as search for the highest paying part-time or full-time jobs. 
Organizations contains one method that allows a user to find the average salary for an organization based on all jobs postings of an organization. 

Futhermore, our application allows the user to interact with the User Interface, see the methods available to be called, as well offers a help method and a quit method. The application records the users inputs and executes the corresponding command if the input is a valid command or  offers an additional prompt. We styled the user interface with the rainbow gem to add color. 
    
## Instructions:
- add budle install
- rake db:migrate 
In order to start the application you will need to type into the terminal `ruby run.rb` then follow the application's instructions in the terminal. 

## Limitations & future plans:

We were unable to use the API we had originally planned to use as there were several issues with the API being so large (4.7 million observations) this made the relationships we wanted to develop challenging. Based on this we decide to seed the data using Faker which limited the use of several of our methods as the names, locations, and  titles of the jobs and organizations are randomized and limit the ability to search by a specific name have know that a name will match. In this case we stopped creating new data every time and set the search by location to a location we knew existed. In the future we hope to add the use of the API and add additional methods to the users. 

## Contributors:
This application was created by Jesse Berman and Nick Ruggieri with guidance and assistance from Trevor Jamesone, Chine Anikwe, and Paul Nicholsen.
##License 
Please visit `License.md` for a full details of the license. 

## Thanks for reading and trying the Monster Job Analyzer!







    

    


