class RemovingNotNullConstraintsInThesisJurors < ActiveRecord::Migration[6.1]
  def up
    execute "ALTER TABLE thesis_jurors ALTER COLUMN year DROP NOT NULL;"
  end

  def down
    execute "ALTER TABLE thesis_jurors ALTER COLUMN year SET NOT NULL;"
  end
end
