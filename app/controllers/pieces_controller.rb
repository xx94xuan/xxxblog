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
    @piece.created_at = DateTime.now
    if @piece.save
      redirect_to edit_piece_path(@piece)
    else
      redirect new_piece_path
    end
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
    @piece.updated_at = DateTime.now
    if @piece.update(piece_params)
      redirect_to piece_path(@piece)
    else
      redirect_to edit_piece_path(@piece)
    end
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to pieces_path
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :body, :upadted_at, :created_at)
  end
end
