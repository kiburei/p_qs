class AddStatusToTenderApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :tender_applications, :status, :boolean, :default => false
  end
end
