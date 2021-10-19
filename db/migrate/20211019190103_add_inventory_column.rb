class AddInventoryColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :inventory, :integer, default: 0
  end
end
