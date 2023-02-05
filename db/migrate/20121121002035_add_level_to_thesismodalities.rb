class AddLevelToThesismodalities < ActiveRecord::Migration[6.1]
  def change
    add_column :thesismodalities, :level, :integer
  end
end
