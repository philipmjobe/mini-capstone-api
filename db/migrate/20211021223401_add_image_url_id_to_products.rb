class AddImageUrlIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :image_url, :integer 
  end
end
