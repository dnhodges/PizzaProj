class Ingredient < ActiveRecord::Base
	validates :ingred_name, :description, :price, presence: true
	validates :ingred_name, uniqueness: true

	validates :price, numericality: {greater_than_or_equal_to: 0.01}

	belongs_to :preference
	# Length validations
	validates :ingred_name, length: {:in => 1..15}
	validates :description, length: {:in => 1..50}

end
