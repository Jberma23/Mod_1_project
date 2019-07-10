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
        end
    
        end

    end
end

# def top_five_orgs
    #     # return array of orgs which have the most job postings
    #     end


#     def highest_paying_organization
#     #  returns array of organizations with the highest paying jobs
#     #  average salary of each org and max avg_sal
#     end

        