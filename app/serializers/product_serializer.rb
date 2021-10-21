class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :images, :description, :is_discounted, :tax, :total

  belongs_to :supplier
  has_many :images 
end
