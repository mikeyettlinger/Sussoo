class Merch < ApplicationRecord
  belongs_to :merch_group
  has_many :merch_line_items
  has_many_attached :photos
end
