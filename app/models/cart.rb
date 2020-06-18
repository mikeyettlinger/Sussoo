class Cart < ApplicationRecord

  has_many :line_items, dependent: :destroy
  has_many :merch_line_items, dependent: :destroy

  def add_song(song)
    current_item = line_items.find_by(song_id: song.id)
    if current_item
      flash[:notice] = "item already in cart"
    else
      current_item = line_items.build(song_id: song.id)
    end
    current_item
  end

  def add_merch(merch)
    current_item = merch_line_items.find_by(merch_id: merch.id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = merch_line_items.build(merch_id: merch.id)
    end
    current_item
  end

end
