class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
    def create  
              @company = Company.find_by(email: params[:session][:email].downcase)
              if @company && @company.authenticate(params[:session][:password])
                          sign_in(@company)
              redirect_to @company
      else
              render 'new'
      end
    end

    def new
      @companies = Company.all
    end

    def destroy
          sign_out
        redirect_to root_url
    end
end
