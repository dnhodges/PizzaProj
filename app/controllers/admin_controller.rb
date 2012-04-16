class AdminController < ApplicationController
  def index
  	@total_customers = Customer.count
  end
end
