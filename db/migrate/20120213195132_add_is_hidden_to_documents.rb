class AddIsHiddenToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :is_hidden, :boolean
  end
end
