class UpdateSectorAddOrgId < ActiveRecord::Migration[5.2]
  def change
    add_column :sectors, :organization_id, :integer 
  end
end
