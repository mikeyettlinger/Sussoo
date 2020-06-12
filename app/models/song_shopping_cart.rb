class SongShoppingCart < ApplicationRecord
  belongs_to :shopping_cart
  has_many :songs
end
