class PiecesController < ApplicationController
  layout 'main'
  
  before_action :init, unless: -> { logged_in? }

  def new
  end

  def index
    begin
      @pieces = @user.pieces.all || []
    rescue
      @pieces = []
    end
  end
  
  def create
    @piece = @user.pieces.new(piece_params)
    @piece.created_at = DateTime.now
    if @piece.save
      redirect_to pieces_path
    else
      redirect_to new_piece_path
    end
  end

  def show
    @piece = @user.pieces.find(params[:id])
    puts @piece.inspect
  end

  def edit
    @piece = @user.pieces.find(params[:id])
  end

  def update
    @piece = @user.pieces.find(params[:id])
    @piece.updated_at = DateTime.now
    if @piece.update(piece_params)
      redirect_to piece_path(@piece)
    else
      redirect_to edit_piece_path(@piece)
    end
  end

  def destroy
    @piece = @user.pieces.find(params[:id])
    @piece.destroy
    redirect_to pieces_path
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :body, :upadted_at, :created_at)
  end
end
