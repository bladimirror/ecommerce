class Product < ActiveRecord::Base
	belongs_to :seller, :foreign_key => "user_id", :class_name => "User", dependent: :destroy
	belongs_to :buyer, :foreign_key => "user_id", :class_name => "User", dependent: :destroy

	#EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :product_name, presence: true, length: {in: 2..30}
	#validate :product_description, presence: true, length: {in: 2..30}
	#validate :product_price, presence: true, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}

	#if self.product_name.valid? == false
	#	flash[:message] = "Missing"
	#	redirect_to "/"
	#end

	before_save do
		self.product_name.downcase!
		self.product_description.downcase!
	end
end
