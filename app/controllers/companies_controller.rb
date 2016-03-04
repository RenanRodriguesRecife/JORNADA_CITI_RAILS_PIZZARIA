class CompaniesController < ApplicationController
 before_action :authorize, except: [:new, :create]  
before_action :correct_user?, only: [:edit, :update, :destroy]
 def index 
  @companies = Company.all
end
def show
  @company = Company.find(params[:id])
end
def edit
  @company = Company.find(params[:id])
end  
def update
  @company = Company.find(params[:id])
  if @company.update_attributes(company_params)
    redirect_to companies_path
  else
    render action: :edit
  end
end
def destroy 
  @company = Company.find(params[:id])
  @company.destroy
  sign_out
  redirect_to root_path
end
  def new
              @company = Company.new
    end
    def create
              @company = Company.new(company_params)
              if @company.save
                          redirect_to @company, notice: "Usuário foi criado com sucesso!"
                          #tire o método de comentário quando criar o helper.
                          #Usuário depois de cadastrar-se acessa o sistema automaticamente
  #sign_in(@user)
              else 
  render action: :new
              end
    end
    private
    def company_params
              params.require(:company).permit(:name, :email, :password, :password_confirmation)
    end
end
