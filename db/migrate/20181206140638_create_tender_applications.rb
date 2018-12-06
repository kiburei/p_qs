class CreateTenderApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :tender_applications do |t|
      t.decimal :value, :precision => 8, :scale => 2
      t.string :bank
      t.string :branch

      t.timestamps
    end
  end
end
