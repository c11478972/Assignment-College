class PasswordResetsController < ApplicationController
  skip_filter :authorise
  def new
  end
  
  def create
	customer = Customer.find_by_email(params[:email])
	customer.send_password_reset if customer
	redirect_to root_path, :notice => "Email sent with password reset instructions."
  end
  
  def edit
	@customer= Customer.find_by_password_reset_token!(params[:id])
  end
  
  def update
	@customer= Customer.find_by_password_reset_token!(params[:id])
	puts "HERE 1"
	if @customer.password_reset_sent_at < 2.hours.ago
		redirect_to new_password_reset_path, :notice => "Password reset has expired."
	elseif @customer.update_attributes(params[:customer])
		@customer.save
		redirect_to root_path, :notice =>"Password has been reset!"
	else
		render :edit
	end
  end
end
