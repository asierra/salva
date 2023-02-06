class AddDocumentToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :document, :string
  end
end
