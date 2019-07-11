class Organization < ActiveRecord::Base 
    has_many :departments
    has_many :sectors, through: :departments
    has_many :jobs

    def org_salary_int(value)
        num = value.remove("$", ",")
        num.to_i
    end

    def avg_sal_org
        org_sal = 0
        self.jobs.each do |job|
            z = []
            z << job[:salary]
            z.each do |each|
            y = org_salary_int(each)
            q = org_sal + y
           x = q/(z.length+1)
           return x
        #    binding.pry
           return self.name
            end
        end
    end
    def job_posting_detail
    x = self.jobs.map do |job|      
    hash = {   
        title: job.title, 
        description: job.description, 
        full_time: job.full_time,
        salary: job.salary,
        location: job.location,
        page_url: job.page_url
    }
    end
    x
    end


        def org_jobs
            x = Organization.all.select do |org|
                org == self 
            end
            # binding.pry
            y = x[0]
            # binding.pry
            puts y.job_posting_detail
        end

    def self.top_five_orgs
        comp_jobs = 0
         x = self.all.sort_by do |org|
           comp_jobs = org.jobs.length
           z = self.all.sort_by do |stuff|
                comp_jobs
            end
            jobs = []
            z.first(5).each do |organization|
               
                organization.jobs.each do |job|
                jobs << job.first.job_posting_detail
            end
            return organization.name
            return jobs
            binding.pry
            end 
            

            binding.pry
            # puts comp_jobs
            # .last(5).reverse
                
                # binding.pry
            end
    end

        # end

        
  



    def self.return_org_by_name(name)
        x = self.all.select do |org|
             org.name == name
        end
        x
    end

    def  self.average_salary_by_name(name)
        x = return_org_by_name(name)
        x.each do |y|
            y.avg_sal_org_by_org
            # binding.pry
        end
    end
    



    def avg_sal_org_by_org
        total_salary = 0
        self.jobs.each do |job|
            z = []
            z << job[:salary]
     
            z.each do |each|
                y = org_salary_int(each)
                q = total_salary + y
                x = q/(z.length+1)
                return x
                # binding.pry
            return self.name
            end
        end
    end


end

# end



#     def highest_paying_organization
#     #  returns array of organizations with the highest paying jobs
#     #  average salary of each org and max avg_sal
#     end

        