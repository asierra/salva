class AddKnowledgeFieldIdToKnowledgeAreas < ActiveRecord::Migration[6.1]
  def change
    add_column :knowledge_areas, :knowledge_field_id, :integer
  end
end
