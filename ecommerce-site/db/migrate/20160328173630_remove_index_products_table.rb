class RemoveIndexProductsTable < ActiveRecord::Migration
  def change
  	remove_index :products, :buyer_idNumber
  	remove_index :products, :seller_idNumber
  end
end
