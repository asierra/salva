class AddUrlToTheses < ActiveRecord::Migration[6.1]
  def change
    add_column :theses, :url, :string
  end
end
