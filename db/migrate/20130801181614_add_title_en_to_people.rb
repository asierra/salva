class AddTitleEnToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :title_en, :string
  end
end
