class AddPlaceOfOriginToJobpositions < ActiveRecord::Migration[6.1]
  def change
    add_column :jobpositions, :place_of_origin, :string
  end
end
