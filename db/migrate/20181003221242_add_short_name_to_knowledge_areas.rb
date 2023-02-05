class AddShortNameToKnowledgeAreas < ActiveRecord::Migration[6.1]
  def change
    add_column :knowledge_areas, :short_name, :text
  end
end
