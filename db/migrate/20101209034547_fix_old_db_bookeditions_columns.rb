class FixOldDbBookeditionsColumns < ActiveRecord::Migration[6.1]
  def self.up
    if Bookedition.columns_hash['pages'].sql_type_metadata.type == :integer
       add_column :bookeditions, :temp_pages, :string
       Bookedition.all.each do |record|
         record.temp_pages = record.pages
         record.save
       end
       remove_column :bookeditions, :pages
       rename_column :bookeditions, :temp_pages, :pages
    end
    change_column :bookeditions, :pages, :text
  end

  def self.down
  end
end
