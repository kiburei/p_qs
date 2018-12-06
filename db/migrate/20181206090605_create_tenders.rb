class CreateTenders < ActiveRecord::Migration[5.2]
  def change
    create_table :tenders do |t|
      t.string :name
      t.string :ref_no
      t.date :pub_date
      t.date :deadline

      t.timestamps
    end
  end
end
