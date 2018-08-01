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
		
	end

	def user_params
		params.require(:user).permit(:user_name, :password)
	end
end
