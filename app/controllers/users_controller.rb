class UsersController < ApplicationController
	#before_action :auth

	def new
	  @user = User.new 
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to user_path(@user.id)
	end

	def show
		@user = User.find_by_id(params[:id])
	end

	def edit
	end

	def index
		@users = User.all 
	end 

	private 

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :admin)
	end 

end

