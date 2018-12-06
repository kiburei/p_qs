class AddCompanyToTenderApplication < ActiveRecord::Migration[5.2]
  def change
    add_reference :tender_applications, :company, foreign_key: true
  end
end
