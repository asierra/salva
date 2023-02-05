class CreateKnowledgeAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :knowledge_areas do |t|
      t.text       :name
      t.text       :name_en
      # t.timestamps
    end
  end
end
