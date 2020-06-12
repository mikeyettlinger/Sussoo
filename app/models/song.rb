class Song < ApplicationRecord
  belongs_to :song_shopping_carts, optional: true
end
