class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]


  def index
    # @events = Event.all
    @events = current_user.events
  end

  def new
    @event = Event.new
    @tasks = @event.tasks.build
  end

  def create
    @event = current_user.events.build(event_params)
    # @task.image = "default_icon.jpg"
    # @event.tasks = @event.tasks.build#(task_params)
    # @event = current_user.@event
    # @task =  current_user.tasks.build(task_params)
    # @event = Event.new(event_params)
    if @event.save

      if params[:event][:image]
        File.binwrite("public/event_images/#{@event.id}.jpg", params[:event][:image].read)
        @event.update(image: "#{@event.id}.jpg" )
      # else
      #   @event.update(image: "default.jpg" )
      end

      redirect_to events_path, notice: "新規作成したよ"
    else
      render :new
    end
  end

  def show
    @tasks = @event.tasks
  end

  def edit
    @event.tasks.build
  end

  def update
    if @event.update(event_params)

      if params[:event][:image]
        File.binwrite("public/event_images/#{@event.id}.jpg", params[:event][:image].read)
        @event.update(image: "#{@event.id}.jpg" )
      end

      redirect_to event_path(@event)
    else
      # @event.tasks.build
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to event_path(@event)
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = Event.ransack(params[:q])
  end

  def event_params
    params.require(:event).permit(:content, :start_date, :end_date,
      tasks_attributes: [:id, :_destroy, :work, :image, :event_id]
    )#.merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
