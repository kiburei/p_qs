class CompaniesController < ApplicationController

  def register

  end

  def create
    @company = Company.create(company_params)
    if @company.save!
      redirect_to root_url, notice: "Company details added"
    end
  end

  def company_params
    params.permit(:company_name, :category, :reg_no, :kra_pin, :ifmis_no, :email, :first_name, :last_name, :national_id, :phone_no, :password, :password_confirmation)
  end

end
