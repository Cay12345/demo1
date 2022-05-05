class UsersController < ApplicationController
	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		params_create = params.require(:user).permit(:name, :email, :password, :age)
		user = User.new(params_create)
		user.save!
		redirect_to users_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
		params_update = params.require(:user).permit(:name, :email, :password, :age)
		user.update!(params_update)
		user.save!
		redirect_to users_path
	end

	def destroy
		user = User.find(params[:id])
		user.destroy!
		redirect_to users_path
	end

	def destroy
		@user.destroy!
		redirect_to users_path
	end
end
