class RemovePhoneNumber < ActiveRecord::Migration[5.2]
  def change
    remove_column :suppliers, :phone_number, :integer
  end
end
