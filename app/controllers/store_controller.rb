class StoreController < ApplicationController
  def index
    @songs = policy_scope(Song)
    @merches = policy_scope(Merch)
    authorize @songs
    authorize @merches
  end
end
