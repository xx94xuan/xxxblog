class PiecesController < ApplicationController
  layout 'main'
  
  before_action :init, unless: -> { logged_in? }
  before_action :fetch_piece, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

  def new
  end

  def index
    begin
      @pieces = @user.pieces.all.order('created_at DESC') || []
    rescue
      @pieces = []
    end
  end
  
  def create
    @piece = @user.pieces.new(piece_params)
    @piece.created_at = DateTime.now
    @piece.updated_at = DateTime.now
    if @piece.save
      redirect_to pieces_path
    else
      redirect_to new_piece_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @piece.updated_at = DateTime.now
    if @piece.update(piece_params)
      redirect_to pieces_path(@piece)
    else
      redirect_to edit_piece_path(@piece)
    end
  end

  def destroy
    @piece.destroy
    redirect_to pieces_path
  end

  private

  def fetch_piece
    @piece = @user.pieces.find(params[:id])
  end

  def piece_params
    params.require(:piece).permit(:title, :body, :upadted_at, :created_at, :published)
  end
end
