require 'test_helper'

class OrderTest < ActiveSupport::TestCase
	
	test "order attributes must not be empty" do
		order = Order.new
		assert order.invalid?
		assert order.errors[:price].any?
		assert order.errors[:delivered].any?
		assert order.errors[:order_time].any?
	end


end
