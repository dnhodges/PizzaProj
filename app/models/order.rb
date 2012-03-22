class Order < ActiveRecord::Base
	validates :order_time, :price, :delivered, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0}

	belongs_to :customer
	has_many :includes_drinks
	has_many :preferences

end
