class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :decimal, :string
  end
end
