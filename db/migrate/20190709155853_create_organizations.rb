class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations |t|
    t.string :name
  end
end
