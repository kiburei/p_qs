class Tender < ApplicationRecord
  belongs_to :business_category
  has_many :tender_applications
end
