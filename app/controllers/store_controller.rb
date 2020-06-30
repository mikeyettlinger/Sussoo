class StoreController < ApplicationController
  def index
    @songs = policy_scope(Song)
    @merches = policy_scope(Merch)
    @merch_group = policy_scope(MerchGroup)
    authorize @merch_group
    authorize @songs
    authorize @merches
  end
end
