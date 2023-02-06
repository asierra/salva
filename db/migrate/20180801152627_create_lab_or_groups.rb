class CreateLabOrGroups < ActiveRecord::Migration[6.1]
  def self.up
    create_table :lab_or_groups do |t|
      t.text       :name
      t.text       :name_en
    end
  end

  def self.down
    drop_table :lab_or_groups
  end
end
