class MerchLineItem < ApplicationRecord
  belongs_to :merch
  belongs_to :cart
end
