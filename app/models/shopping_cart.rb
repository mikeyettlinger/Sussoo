class ShoppingCart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :song_shopping_carts
end
