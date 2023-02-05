class CreateRefereedCriteria < ActiveRecord::Migration[6.1]
  def self.up
    create_table :refereed_criteria do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :refereed_criteria
  end
end
