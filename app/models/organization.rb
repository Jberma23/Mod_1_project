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
        self.all.jobs.each do |job|
            z = []
            z << job[:salary]
            z.each do |each|
            y = org_salary_int(each)
            q = org_sal + y
           x = q/(z.length+1)
           return x
           binding.pry
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
            binding.pry
            puts y.job_posting_detail
        end

    def self.top_five_orgs
        x = self.all.sort_by do |org|
            org.jobs.length
        end
        puts x.last(5).reverse
        
    end



    def self.return_org_by_name(name)
        x = self.all.select do |org|
             org.name == name
        end
        x
     end

    def  self.average_salary_by_name(name)
        x = return_org_by_name(name)
        binding.pry
        self.all.map |org|
        if org.name == name
            org.avg_sal_org
        end

    end

end

# end



#     def highest_paying_organization
#     #  returns array of organizations with the highest paying jobs
#     #  average salary of each org and max avg_sal
#     end

        