class ProductSerializer < ActiveModel::Serializer
  current_user
  attributes :id, :name, :price, :description, :is_discounted, :tax, :total

  belongs_to :supplier
  has_many :images 
end
