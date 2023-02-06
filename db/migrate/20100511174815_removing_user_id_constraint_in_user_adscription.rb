class RemovingUserIdConstraintInUserAdscription < ActiveRecord::Migration[6.1]
  def self.up
    execute "ALTER TABLE user_adscriptions ALTER COLUMN user_id DROP NOT NULL;"
  end

  def self.down
    execute "ALTER TABLE user_adscriptions ALTER COLUMN user_id SET NOT NULL;"
  end
end
