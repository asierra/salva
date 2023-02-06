class AddRegisteredByToUserRefereedJournals < ActiveRecord::Migration[6.1]
  def self.up
    add_column :user_refereed_journals, :registered_by_id, :integer
    add_column :user_refereed_journals, :modified_by_id, :integer
  end

  def self.down
    remove_column :user_refereed_journals, :registered_by_id
    remove_column :user_refereed_journals, :modified_by_id
  end
end
