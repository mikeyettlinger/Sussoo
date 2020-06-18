class StoreController < ApplicationController
  def index
    @songs = Song.all
    @merches = Merch.all
  end
end
