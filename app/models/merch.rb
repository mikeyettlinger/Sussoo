class Merch < ApplicationRecord
  has_many :merch_line_items
  has_many_attached :photos
end
