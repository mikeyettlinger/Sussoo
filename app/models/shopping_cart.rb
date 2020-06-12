class ShoppingCart < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :song_shopping_card
end
