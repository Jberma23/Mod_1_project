class CreateDepartmentsTable < ActiveRecord::Migration[5.2]
  def change
      create_table :departments do |t|
        t.integer :organization_id
        t.integer :sector_id
        t.integer :job_id
      end
  end
end
