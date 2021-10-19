class ChangePriceBackToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :price, :integer, using: 'price::integer'
  end
end
