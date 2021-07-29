class DashboardController < ApplicationController
  def index
    @total_reminders = Event.count
    @total_past_reminders = Event.where("end_time < ?",  Time.now).count
    @total_active_reminders = Event.where("start_time >= ? OR end_time >= ?", Time.now, Time.now).count
  end
end
