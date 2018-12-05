class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:company_name, :category, :reg_no, :kra_pin, :ifmis_no, :email, :first_name, :last_name, :national_id, :phone_no, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:company_name, :category, :reg_no, :kra_pin, :ifmis_no, :email, :first_name, :last_name, :national_id, :phone_no, :password, :password_confirmation, :current_password)
  end
end
