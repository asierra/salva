class CreateImages < ActiveRecord::Migration[6.1]
  def self.up
    create_table :images do |t|
      t.string :file
      t.references :imageable, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
