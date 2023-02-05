class AddPhoneExtensionToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :phone_extension, :string
  end
end
