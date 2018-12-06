class AddTenderToTenderApplication < ActiveRecord::Migration[5.2]
  def change
    add_reference :tender_applications, :tender, foreign_key: true
  end
end
