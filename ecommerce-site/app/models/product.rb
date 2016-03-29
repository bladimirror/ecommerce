class Product < ActiveRecord::Base
	#belongs_to :seller_id, :foreign_key => "user_id", :class_name => "User", dependent: :destroy
	#belongs_to :buyer_id, :foreign_key => "user_id", :class_name => "User", dependent: :destroy

	#has_many :users, class_name: "Product", foreign_key: "seller_id"
	#has_many :users, class_name: "Product", foreign_key: "buyer_id"

	belongs_to :users

	validates :product_name, presence: true, length: {in: 2..30}

	before_save do
		self.product_name.downcase!
		self.product_description.downcase!
	end
end
