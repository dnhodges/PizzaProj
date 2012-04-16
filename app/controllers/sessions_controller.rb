class SessionsController < ApplicationController
  def new
  end

  def create
  	customer = Customer.find_by_first_name(params[:first_name])
  	if customer and customer.authenticate(params[:password])
  		session[:customer_id] = customer.customer_id
  		redirect_to admin_url
  	else
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:customer_id] = nil
  	#redirect_to customer_url, 
  	#notice: "Logged out" #remove ingredient url
  end
end
