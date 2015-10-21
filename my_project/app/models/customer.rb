class Customer < ActiveRecord::Base
	has_many :pets
	validates :Customer_name, presence:true
end
