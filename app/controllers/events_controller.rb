class EventsController < ApplicationController
  # before_action :init, unless: -> { logged_in? }, only: [:new, :create, :destroy]
  # before_action :set_login_user

  def new
  end

  def index
    begin
      @events = Event.all.order('time DESC')
    rescue
      @events = []
    end
  end
  
  def create
    @event = Event.new(piece_params)
    @event.created_at = DateTime.now
    if @event.save
      redirect_to edit_piece_path(@event)
    else
      redirect new_piece_path
    end
  end

  def show
    @event = Event.find(params[:id])
    puts @event.inspect
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.updated_at = DateTime.now
    if @event.update(piece_params)
      redirect_to piece_path(@event)
    else
      redirect_to edit_piece_path(@event)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to pieces_path
  end

  private

  def event_params
    params.require(:piece).permit(:name, :time, :upadted_at, :created_at)
  end
end
