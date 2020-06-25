class PagesController < ApplicationController
  include CurrentCart
  def home
    @songs = Song.all
    @merches = Merch.all
  end

end
