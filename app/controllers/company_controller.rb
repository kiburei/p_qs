class CompanyController < ApplicationController
  before_action :authenticate_company!, only: [:verify, :tenders]
  before_action :set_tender, only: [:application_form]

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

  def application_form

  end

  def new_application
    @application = TenderApplication.create!(application_params)
    if @application.save!
      redirect_to root_url
    end
  end


  private

  def set_tender
    @tender = Tender.find(params[:id])
  end

  def company_params
    params.permit(:company_name, :category, :reg_no, :kra_pin, :ifmis_no, :email, :first_name, :last_name, :national_id, :phone_no, :password, :password_confirmation)
  end

  def application_params
    params.permit(:value, :bank, :branch, :company_id, :tender_id)
  end

end
