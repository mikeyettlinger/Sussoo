class Order < ApplicationRecord
  belongs_to :user
  belongs_to :song_shopping_cart
end
