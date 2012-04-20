class Order < ActiveRecord::Base
	#before_save :after_default
	#attr_accessible :preferences_attributes, :ingredients_attributes, :order_time, :price, :delivered

	after_initialize :default_values

	validates :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0}

	belongs_to :customer

	has_and_belongs_to_many :includes_drinks#, :dependent => destroy
	accepts_nested_attributes_for  :includes_drinks, :allow_destroy => true

	has_many :preferences, :dependent => :destroy
	accepts_nested_attributes_for :preferences, :allow_destroy => true#, :reject_if => lambda { |a| a[:size].blank? }, :allow_destroy => true

	#has_many :ingredients#, :through => :preferences#, :foreign_key => :ingredient_id
	#accepts_nested_attributes_for :ingredients


	def default_values
		self.order_time = Time.now
		#self.price = 0
		#self.delivered = false
	end

end
