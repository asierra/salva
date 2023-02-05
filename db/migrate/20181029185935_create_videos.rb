class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.references :user
      t.text       :name
      t.text       :url
      t.integer    :start_year
      t.integer    :start_month
      # t.references :registered_by, :class_name => 'User', :foreign_key => 'registered_by_id'
      t.references :registered_by, index: true, foreign_key: {to_table: :users}

      # t.references :modified_by, :class_name => 'User', :foreign_key => 'modified_by_id'
      t.references :modified_by, index: true, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
