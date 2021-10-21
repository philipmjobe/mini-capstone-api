class RemoveImageIdFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :image_id, :integer
  end
end
