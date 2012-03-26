class Customer < ActiveRecord::Base
	#validates :email, :first_name, :last_name, :phone, :address, presence: true
	#validates :email, uniqueness: true

	#validates :amount_spent, numericality: {greater_than_or_equal_to: 0}
	has_secure_password

	has_many :orders

	# Length validations
	#validates :email, :password_digest, length: {:in => 1..50}
	#validates :first_name, :last_name, length: {:in => 1..20}

	#validates :phone, length: {:is => 10}
	#must enter phone # without hyphens?
	#validates :address, length: {:maximum => 100}



end
