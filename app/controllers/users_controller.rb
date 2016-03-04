class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		#@offer = Offer.find(params[:id])
		#@user = @offer.users.create(user_params)
		@user = User.new(user_params)
		@user.save
		redirect_to root_path
	end

	def destroy
		@user = User.find(params[:offer_id])
		@user.destroy
		redirect_to companies_path
	end

	
	def user_params
		params.require(:user).permit(:name, :tel, :address, :offer_id)
	end
end
