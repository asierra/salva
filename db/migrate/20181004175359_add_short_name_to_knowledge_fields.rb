class AddShortNameToKnowledgeFields < ActiveRecord::Migration[6.1]
  def change
    add_column :knowledge_fields, :short_name, :text
  end
end
