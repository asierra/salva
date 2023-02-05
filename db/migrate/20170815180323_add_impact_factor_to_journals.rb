class AddImpactFactorToJournals < ActiveRecord::Migration[6.1]
  def change
    add_column :journals, :impact_factor_id, :integer
  end
end
