class AddDocumentToTheses < ActiveRecord::Migration[6.1]
  def change
    add_column :theses, :document, :string
  end
end
