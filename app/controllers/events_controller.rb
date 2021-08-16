class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]


  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    # @event = Event.new(event_params)
    if @event.save
      redirect_to events_path, notice: "新規作成したよ"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:title, :content, :image)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
