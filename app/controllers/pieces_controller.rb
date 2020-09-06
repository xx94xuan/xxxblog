class PiecesController < ApplicationController
  def new
  end

  def index
    begin
      @pieces = Piece.all
    rescue
      @pieces = []
    end
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

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    @piece.update(piece_params)
    redirect_to piece_path(@piece)
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :body)
  end
end
