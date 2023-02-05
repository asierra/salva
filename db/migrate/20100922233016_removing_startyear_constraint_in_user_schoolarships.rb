class RemovingStartyearConstraintInUserSchoolarships < ActiveRecord::Migration[6.1]
  def self.up
    execute "ALTER TABLE user_schoolarships ALTER COLUMN startyear DROP NOT NULL;"
  end

  def self.down
    execute "ALTER TABLE user_schoolarships ALTER COLUMN startyear SET NOT NULL;"
  end
end
