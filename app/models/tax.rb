class Tax < ActiveRecord::Base
	validates :state, :tax_name, :amount, presence: true
	validates :amount, numericality: {greater_than: 0}
	validates :amount, numericality: {less_than: 1}
	#validates :food_or_drink_tax

	# Length validations

	validates :state, length: {:is => 2}
	validates :tax_name, length: {:is => 1}

	# Ensures that valid tax type is entered F = Food, D = Drink
	def food_or_drink_tax
		if :tax_name != 'F' || :tax_name != 'D'
			errors.add(:tax_name, "must be F or D.")
		end
	end
end
