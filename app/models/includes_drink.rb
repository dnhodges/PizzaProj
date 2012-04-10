class IncludesDrink < ActiveRecord::Base
	validates :drink_name, :manufacturer, :description, :price, presence: true 
	validates :price, numericality: {greater_than_or_equal_to: 0.01}


	# Length validations

	validates :drink_name, :manufacturer, length: {:in => 1..15}
	validates :description, length: {:in => 1..50}
	belongs_to :order

end
