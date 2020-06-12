class Song < ApplicationRecord
  before_destroy :not_referenced_by_any_song_shopping_carts
  has_many :song_shopping_carts

  private

  def not_referenced_by_any_song_shopping_carts
    unless song_shopping_carts.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end

end
