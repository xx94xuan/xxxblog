class LandingPageController < ApplicationController
  layout 'main'

  def index
    @pieces = Piece.published.all.order('created_at DESC')
  end

  def public_piece_show
    @piece = Piece.published.find(params[:id])
    render 'pieces/show'
  end

end
