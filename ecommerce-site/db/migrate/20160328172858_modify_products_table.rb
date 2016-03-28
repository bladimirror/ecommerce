class ModifyProductsTable < ActiveRecord::Migration
  def change
  	rename_column :products, :seller_id, :seller_idNumber
  	rename_column :products, :buyer_id, :buyer_idNumber
  end
end
