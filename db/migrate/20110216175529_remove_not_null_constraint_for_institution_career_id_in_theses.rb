class RemoveNotNullConstraintForInstitutionCareerIdInTheses < ActiveRecord::Migration[6.1]
 def self.up
    execute "ALTER TABLE theses ALTER COLUMN institutioncareer_id DROP NOT NULL"
  end

  def self.down
    execute "ALTER TABLE theses ALTER COLUMN institutioncareer_id SET NOT NULL"
  end
end
