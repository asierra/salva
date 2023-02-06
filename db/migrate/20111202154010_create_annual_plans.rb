class CreateAnnualPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :annual_plans do |t|
      t.references :documenttype
      t.text :body
      t.references :user
      t.boolean :delivered
      t.timestamps
    end
  end
end
