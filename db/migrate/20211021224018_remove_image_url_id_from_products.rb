class RemoveImageUrlIdFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :image_url, :integer
  end
end
