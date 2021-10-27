class LandingPageController < ApplicationController
  layout 'main'

  def index
    @pieces = Rails.cache.fetch('all_pieces', expires_in: 1.hour) do
      Piece.published.all.order('created_at DESC')
    end
    # @pieces = Piece.published.all.order('created_at DESC')

  end

  def public_piece_show
    @piece = Piece.published.find(params[:id])
    render 'pieces/show'
  end

end
