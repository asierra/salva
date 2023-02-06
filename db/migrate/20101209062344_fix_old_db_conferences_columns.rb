class FixOldDbConferencesColumns < ActiveRecord::Migration[6.1]
  def self.up
    unless column_exists? :conferences, :other
      add_column :conferences, :other, :text
    end
  end

  def self.down
  end
end
