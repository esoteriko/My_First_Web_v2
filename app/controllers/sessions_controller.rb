class SessionsController < ApplicationController
  def new
  end

  def create
  	 user = User.find(params[:session][:user_name].downcase)
    if user && user.authenticate(params[:session][:password])
    else
    flash[:danger] = 'Invalid email/password combination'
  	render 'new'
  end
  end

  def destroy
  	
  end
end
