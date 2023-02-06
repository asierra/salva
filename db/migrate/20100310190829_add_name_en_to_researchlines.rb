class AddNameEnToResearchlines < ActiveRecord::Migration[6.1]
  def self.up
    add_column :researchlines, :name_en, :string
  end

  def self.down
    remove_column :researchlines, :name_en
  end
end
