class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  def index
    @new_reminder = Reminder.new
    start_date = params[:start]
    end_date = params[:end]
    @reminders = Reminder.all
    respond_to do |format|
      format.html
      format.json { render :json => @reminders }
    end
  end

  def create
    @reminder = Reminder.new(reminder_params)

    if @reminder.save
      redirect_to reminders_path, notice: "Good to go. Reminder has been set"
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @reminder.update(reminder_params)
      redirect_to reminders_path, notice: "I got your back.Reminder updated"
    else
      render :edit
    end
  end

  def destroy
    @reminder.destroy
    redirect_to reminders_path, notice: "Awesome.Reminder done and deleted"
  end

  private

  def set_reminder
    @reminder = Reminder.find(params[:id])
  end

  def reminder_params
    params.require(:reminder).permit(:title, :start_time, :end_time, :notification_time, :all_day)
  end
end
