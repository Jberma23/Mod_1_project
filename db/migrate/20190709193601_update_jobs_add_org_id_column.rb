class UpdateJobsAddOrgIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :organization_id, :integer
  end
end
