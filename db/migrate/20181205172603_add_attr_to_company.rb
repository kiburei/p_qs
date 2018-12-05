class AddAttrToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :company_name, :string
    add_column :companies, :category, :string
    add_column :companies, :reg_no, :string
    add_column :companies, :kra_pin, :string
    add_column :companies, :ifmis_no, :string
    add_column :companies, :company_email, :string
    add_column :companies, :first_name, :string
    add_column :companies, :last_name, :string
    add_column :companies, :national_id, :string
    add_column :companies, :phone_no, :string
  end
end
