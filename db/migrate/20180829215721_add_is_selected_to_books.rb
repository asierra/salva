class AddIsSelectedToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :is_selected, :boolean, :default => false
  end
end
