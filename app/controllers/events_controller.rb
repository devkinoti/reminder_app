class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    start_date = params[:start]
    end_date = params[:end]
    @events = Event.where("start_time >= ? AND end_time <= ?", start_date, end_date)
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to dashboard_path, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
    redirect_to dashboard_path, notice: 'Event was successfully destroyed.'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:all_day, :start_time, :end_time, :title, :event_color)
  end
end