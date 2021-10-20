class Product < ApplicationRecord
  validates :name, length: {minimum: 2}
  validates :price, presence: true, numericality: {only_integer: true}
  validates :image_url, presence: true 
  validates :description, presence: true, length: {maximum 500}


  def is_discounted
    price <= 10 
  end 

  def tax
    tax = price * 0.09
  end 

  def total
    total = tax + price
  end 
end
