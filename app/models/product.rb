class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :supplier
  has_many :orders
  
  validates :name, presence: true, length: {minimum: 2}
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :image_url, presence: true 
  validates :description, presence: true, length: { in: 10..500 }
  
  def images
    Image.where(product_id: id)
  end 

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
