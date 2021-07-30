class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    start_date = params[:start]
    end_date = params[:end]
    @events = Event.reminder_times(start_date, end_date)
    @all_reminders = Event.all.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def show
  end

  # color code actions
  def aquamarine
    @aquamarine_reminders = Event.aquamarine_color_code.paginate(page: params[:page], per_page: 10)
  end

  def darkslateblue
    @darkslateblue_reminders = Event.darkslateblue_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def deepskyblue
    @deepskyblue_reminders = Event.deepskyblue_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def darkviolet
    @darkviolet_reminders = Event.darkviolet_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def forestgreen
    @forestgreen_reminders = Event.forestgreen_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def lightcoral
    @lightcoral_reminders = Event.lightcoral_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def lightsalmon
    @lightsalmon_reminders = Event.lightsalmon_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def purple
    @purple_reminders = Event.purple_color_code.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to dashboard_path, notice: 'Awesome.Good to Go'
    else
      render :new
    end
  end

  def update
    @event.update(event_params)
    flash[:notice] = "You are alright,just updated the reminder"
  end

  def destroy
    @event.destroy
    redirect_to dashboard_path, notice: 'Reminder has been deleted'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:all_day, :start_time, :end_time, :title, :event_color)
  end
end