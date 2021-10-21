class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :images, :description,:is_discounted, :tax, :total, :supplier
end
