class ShoppingCart < ApplicationRecord
  # belongs_to :user, optional: true
  has_many :song_shopping_carts, dependent: :destroy

  def add_song(song)
    current_item = song_shopping_carts.find_by(song_id: song.id)
    if current_item
      flash[:notice] = "Track already added to the basket"
    else
      current_item = song_shopping_carts.build(song_id: song.id)
    end
    current_item
  end

  def total_price
    song_shopping_carts.to_a.sum { |item| item.total_price }
  end

end
