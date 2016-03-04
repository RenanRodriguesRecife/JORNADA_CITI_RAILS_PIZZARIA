class OffersController < ApplicationController

	def new
		@offer = Offer.new
	end

	def create
		@company = Company.find(params[:company_id])
		@offer = @company.offers.create(offers_params)
	#	@user = User.new(user_params)
	#	@offers_user = OffersUser.create ({user_id: @user.id,offer_id: @offer.id})
		@offer.save
		redirect_to root_path
	end

	def show
  		@offer = Offer.find(params[:id])
	end

	def destroy
		@company = Company.find(params[:company_id])
		@offer = @company.offers.find(params[:id])
		@offer.destroy
		redirect_to companies_path
	end

	private 
	def offers_params
		params.require(:offer).permit(:tittle, :value)
	end

	#def user_params
	#	params.require(:user).permit(:name, :tel, :address)
	#end

end
