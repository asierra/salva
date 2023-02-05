class DropIndexInThesisModalities < ActiveRecord::Migration[6.1]

  def up
    execute "ALTER TABLE thesismodalities DROP CONSTRAINT IF EXISTS thesismodalities_name_key"
  end

  def down
    execute "ALTER TABLE thesismodalities ADD CONSTRAINT thesismodalities_name_key UNIQUE (name)"
  end
end
