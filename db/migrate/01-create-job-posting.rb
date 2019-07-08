

class CreateJob < ActiveRecord::Migration


    def change
        create_table :jobs do |t|
            t.string :title
            t.string :description 
            t.boolean :full_time
            t.integer :salary
            t.string :page_url
        end
    end


end