class AddHasOpenAccessToJournals < ActiveRecord::Migration[6.1]
  def change
    add_column :journals, :has_open_access, :boolean
  end
end
