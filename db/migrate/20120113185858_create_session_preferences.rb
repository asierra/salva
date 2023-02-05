class CreateSessionPreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :session_preferences do |t|
      t.references :user
      t.boolean :search_enabled

      t.timestamps
    end
  end
end
