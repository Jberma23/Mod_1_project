class Job < ActiveRecord::Base 
    belongs_to :organization
    has_one :department
    has_one :sector, through: :department
    
    def attribute_add_dot
            {
                title: self.title, 
                description: self.description, 
                full_time: self.full_time,
                salary: self.salary,
                page_url: self.page_url
            }
    end

    def self.attribute_add
        self.all.map do |job|
        {
            title: job.title, 
            description: job.description, 
            full_time: job.full_time,
            salary: job.salary,
            page_url: job.page_url
        }
        end
    end

    # def self.search_by_full_time
    #     if 
    #     x = self.attribute_add.full_time == true 
    #     return self.attribute_add.full_time
    #     end
    # end

    def self.search_by_location(string)
        x= self.all.select do |attribute| 
            if attribute.location == string
                self.attribute_add
            end
        end
    end

    def salary_int
        num = self.salary.remove("$", ",")
        num.to_i
    end
    
    #class method to return the highest paying job
    def self.highest_pay 
        self.sort_by_salary.last.attribute_add_dot
    end

    def self.sort_by_salary
        self.all.sort_by do |job|
            job.salary_int
        end
    end
end
 