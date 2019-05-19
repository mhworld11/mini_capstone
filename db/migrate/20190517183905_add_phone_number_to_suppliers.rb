class AddPhoneNumberToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :phone_number, :string
  end
end
