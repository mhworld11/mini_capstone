class RemoveIntegerfromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :integer, :string
  end
end
