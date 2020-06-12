class SongShoppingCart < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :song
end
