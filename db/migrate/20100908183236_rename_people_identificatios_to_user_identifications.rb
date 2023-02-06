class RenamePeopleIdentificatiosToUserIdentifications < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :people_identifications, :user_identifications
  end

  def self.down
    rename_table  :user_identifications, :people_identifications
  end
end
