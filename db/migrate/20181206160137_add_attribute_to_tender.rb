class AddAttributeToTender < ActiveRecord::Migration[5.2]
  def change
    add_column :tenders, :awarded, :boolean, :default => false
  end
end
