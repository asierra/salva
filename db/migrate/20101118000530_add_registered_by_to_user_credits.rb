class AddRegisteredByToUserCredits < ActiveRecord::Migration[6.1]
  def self.up
     add_column :user_credits, :registered_by_id, :integer
     add_column :user_credits, :modified_by_id, :integer
   end

   def self.down
     remove_column :user_credits, :registered_by_id
     remove_column :user_credits, :modified_by_id
   end
end
