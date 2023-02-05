class UpdateContractypes < ActiveRecord::Migration[6.1]
  def self.up
    Contracttype.create(:name => 'Otro')
  end

  def self.down
    Contracttype.where(:name => 'Otro').first.destroy
  end
end
