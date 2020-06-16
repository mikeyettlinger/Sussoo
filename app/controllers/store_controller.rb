class StoreController < ApplicationController
  def index
    @songs = Song.all
  end
end
