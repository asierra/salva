class AddUrlToLabOrGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :lab_or_groups, :url, :text
  end
end
