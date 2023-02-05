class RemoveOldRecordsFromDocuments < ActiveRecord::Migration[6.1]
  def up
    execute "DELETE FROM user_documents";
    execute "DELETE FROM documents WHERE user_id IS NULL;"
  end

  def down
  end
end
