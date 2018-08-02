class UsersController < ApplicationController
	def new
		
	end
	def index
		@users = User.all
	end

	def show 
		
	end

	def edit
		
	end

	

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to @user
	end

	def user_params
		params.require(:user).permit(:name, :last_name, :group, :count_number, :user_name, :password, :password_2)
	end
end
