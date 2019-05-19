class ChangePricetoDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    
    change_column :products, :price, :decimal,using: "price::numeric(9,2)"
  end
end
