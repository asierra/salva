class FillLevelAttributeInToThesismodalities < ActiveRecord::Migration[6.1]
  def up
    Thesismodality.all.each do |record|
      record.update_attribute :level, record.id
    end
  end

  def down
  end
end
