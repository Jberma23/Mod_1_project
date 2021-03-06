class Job < ActiveRecord::Base 
    belongs_to :organization
    has_one :department
    has_one :sector, through: :department
    
    def print_hash
            {
                title: self.title, 
                description: self.description, 
                full_time: self.full_time,
                salary: self.salary,
                location: self.location,
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
            location: job.location,
            page_url: job.page_url
        }
        end
    end

    def self.search_by_full_time
         self.attribute_add.select do |job|
            if job[:full_time] == true
                puts ""
                puts Rainbow("#{job.first(6).first[1].capitalize}").underline 
                puts Rainbow("#{job.first(6)[3][1]}").underline 
                puts Rainbow("#{job.first(6)[4][1]}").underline 
            end
        end
    end

    def self.search_by_part_time
        self.attribute_add.select do |job|
           if job[:full_time] == false
                puts ""
                puts Rainbow("#{job.first(6).first[1].capitalize}").underline 
                puts Rainbow("#{job.first(6)[3][1]}").underline 
                puts Rainbow("#{job.first(6)[4][1]}").underline 
           end
       end
   end

    def self.search_by_location(string)
        x= self.all.select do |attribute| 
            if attribute.location == string
                self.attribute_add
            end
        end
    end

    def salary_int
        num = self.salary.remove("$", ",")
        # binding.pry
        num.to_i
    end
    
    #class method to return the highest paying job
    def self.highest_pay 
        self.all.sort_by_salary.reverse.first.print_hash
    end

    def self.sort_by_salary
        self.all.sort_by do |job|
            job.salary_int
        end
    end
    
    def self.highest_pay_part_time
        self.all.sort_by_salary.reverse.first(5).each do |job|
            if job[:full_time] == false
                return job.print_hash
            end  
        end
    end
  
    def self.highest_pay_full_time
        self.all.sort_by_salary.reverse.first(5).find do |career|
            if career[:full_time] == true
                return career.print_hash
            end  
        end
    end

    


end
 