class AddCommentsToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :comments, :text
  end
end
