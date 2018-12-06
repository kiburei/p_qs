class AddAttrToTenderApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :tender_applications, :winner, :boolean, :default => false
  end
end
