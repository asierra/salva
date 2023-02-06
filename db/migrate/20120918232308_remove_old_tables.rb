class RemoveOldTables < ActiveRecord::Migration[6.1]
  def up
    %w(permissions controllers user_grants grants actions).each do |table_name|
      drop_table table_name if table_exists? table_name
    end
  end

  def down
  end
end
