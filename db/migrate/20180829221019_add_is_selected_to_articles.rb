class AddIsSelectedToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :is_selected, :boolean, :default => false
  end
end
