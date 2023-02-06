class AddDegreeIdToThesismodalities < ActiveRecord::Migration[6.1]
  def change
    add_column :thesismodalities, :degree_id, :integer
  end
end
