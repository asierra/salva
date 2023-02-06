class AddShortNameToLabOrGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :lab_or_groups, :short_name, :text
  end
end
