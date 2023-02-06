class AddRegisteredByToLanguages < ActiveRecord::Migration[6.1]
  def self.up
    if column_exists? :languages, :moduser_id
      rename_column :languages, :moduser_id, :registered_by_id
    else
      add_column :languages, :registered_by_id, :integer
    end

    add_column :languages, :modified_by_id, :integer
  end

  def self.down
    rename_column :languages, :registered_by_id, :moduser_id
    remove_column :languages, :modified_by_id
  end
end
