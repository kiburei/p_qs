class TenderApplication < ApplicationRecord
  belongs_to :company
  belongs_to :tender
end
