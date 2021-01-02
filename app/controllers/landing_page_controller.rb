class LandingPageController < ApplicationController
  layout 'main'

  def index
    @pieces = Piece.published.all.order('created_at DESC')
  end

end
