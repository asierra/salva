class FillLevelAttributeInToDegrees < ActiveRecord::Migration[6.1]
  def up
    Degree.all.each do |record|
      degree.update_attribute :level, record.id
    end
  end

  def down
  end
end
