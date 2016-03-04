class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		@offer = Offer.find(params[:offer_id])
		@user = @offer.users.create(user_params)
		#@user = User.new(user_params)
		#@offers_user = OffersUser.create ({user_id: @user.id,offer_id: @offer.id})
	
		@user.save
		redirect_to root_path
	end

	def destroy
		@offer = Offer.find(params[:offer_id])
		@user = @offer.users.find(params[:id])
		@user.destroy
		redirect_to companies_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :tel, :address)
	end


end
