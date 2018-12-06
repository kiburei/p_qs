class CompanyController < ApplicationController
  before_action :authenticate_company!, only: [:verify]

  def register
    @categories = BusinessCategory.all
  end

  def create
    @company = Company.create(company_params)
    if @company.save!
      redirect_to root_url, notice: "Company details added"
    end
  end

  def verify

  end

  def tenders
    @tenders = Tender.all
  end

  def company_params
    params.permit(:company_name, :category, :reg_no, :kra_pin, :ifmis_no, :email, :first_name, :last_name, :national_id, :phone_no, :password, :password_confirmation)
  end

end
