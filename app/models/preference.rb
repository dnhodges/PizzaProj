class Preference < ActiveRecord::Base
	validates :quantity, :size, :crust, :price, presence: true

	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :quantity, numericality: {greater_than_or_equal_to: 1}

	validates :valid_size, :valid_crust
	
	belongs_to :order
	has_many :ingredients 
	
	# Length validations
	validates :size, :crust, length: {:is => 1}

	def valid_size
		if :size != 'S' || :size != 'M' || :size != 'L'
			errors.add(:size, "is an invalid pizza size.")
		end
	end

	def valid_crust
		if :crust != 'T' || :crust != 'H' || :crust != 'P'
			errors.add(:crust, "is an invalid pizza crust.")
		end
	end

end
