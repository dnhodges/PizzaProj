class Preference < ActiveRecord::Base
	#validates_presence_of :order_id, :ingredient_id

	#belongs_to :order
	#belongs_to :ingredient
	has_and_belongs_to_many :ingredients
	#accepts_nested_attributes_for :order
	accepts_nested_attributes_for :ingredients
	#has_many :ingredients 
	#accepts_nested_attributes_for :ingredients#, :reject_if => lambda { |a| a[:ingred_name].blank? }, :allow_destroy => true

	#attr_accessible :ingredients_attributes, :quantity, :size, :crust, :price

	before_save :calc_subtotal

	#validates :quantity, :size, :crust, :price, presence: true

	#validates :price, numericality: {greater_than_or_equal_to: 0.01}
	#validates :quantity, numericality: {greater_than_or_equal_to: 1}

	#accept
	validate :valid_size, :valid_crust
	
	
	# Length validations
	validates :size, length: {:is => 1}

	SIZES = {'S' => 8.00, 'M' => 9.00, 'L' => 10.00}
	CRUST_TYPES = ['Thin' => 0, 'Thick' => 0.50, 'Stuffed' => 1.00]
	def self.sizes
		{'S' => 8.00, 'M' => 9.00, 'L' => 10.00}
	end

	def self.crust_types
		{'Thin' => 0, 'Thick' => 0.50, 'Stuffed' => 1.00}
	end

	def valid_size
		#p size.upcase
		#custSize = preference.size
		if Preference.sizes[self.size] == nil
			errors.add(:size, "is an invalid pizza size.") 
		end
	end

	def valid_crust
		if Preference.crust_types[self.crust] == nil
			errors.add(:crust, "is an invalid pizza crust.")
		end
	end

	def calc_subtotal
		self.price = Preference.sizes[self.size] + Preference.crust_types[self.crust]
	end

end
