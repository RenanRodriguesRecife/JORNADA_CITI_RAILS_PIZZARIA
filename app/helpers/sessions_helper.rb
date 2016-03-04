module SessionsHelper
	def sign_in(company)
			session[:company_id] = @company.id
	end

  def current_user=(company)
    @current_user = company
  end
    def current_user
          @current_user ||= Company.find_by(id: session[:company_id])
	end
	def block_access
          if current_user.present?
                     redirect_to companies_path
          end
	end
  	def logged_in?
              !current_user.nil?
              end
	def sign_out
              session.delete(:user_id)
              @current_user = nil
    end

end
