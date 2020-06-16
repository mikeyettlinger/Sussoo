class Cart < ApplicationRecord

  has_many :line_items, dependent: :destroy

  def add_song(song)
    current_item = line_items.find_by(song_id: song.id)
    if current_item
      flash[:notice] = "item already in cart"
    else
      current_item = line_items.build(song_id: song.id)
    end
    current_item
  end

end
