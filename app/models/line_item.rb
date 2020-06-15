class LineItem < ApplicationRecord
  belongs_to :song
  belongs_to :cart
end
