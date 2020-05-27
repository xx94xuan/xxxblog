class PiecesController < ApplicationController
  def new
  end

  def index
    @pieces = Piece.all
  end
  
  def create
    @piece = Piece.new(piece_params)
 
    @piece.save
    redirect_to @piece
  end

  def show
    @piece = Piece.find(params[:id])
    puts @piece.inspect
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :body)
  end
end
