class Order < ApplicationRecord
  belongs_to :user

  has many :carted_products

  has_many :products, through: :carted_products
 


  end
