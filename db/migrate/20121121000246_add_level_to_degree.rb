class AddLevelToDegree < ActiveRecord::Migration[6.1]
  def change
    add_column :degrees, :level, :integer
  end
end
