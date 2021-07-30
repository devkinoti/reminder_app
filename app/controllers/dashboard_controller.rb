class DashboardController < ApplicationController
  def index
    @total_reminders = Event.total_reminders
    @total_past_reminders = Event.total_past_reminders
    @total_active_reminders = Event.total_active_reminders
  end
end
