class AddCommentsToTenderApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :tender_applications, :comments, :text
  end
end
