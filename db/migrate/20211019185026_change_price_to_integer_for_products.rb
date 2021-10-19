class ChangePriceToIntegerForProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :price, :string
  end
end
