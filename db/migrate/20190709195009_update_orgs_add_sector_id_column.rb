class UpdateOrgsAddSectorIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :sector_id, :integer
  end
end