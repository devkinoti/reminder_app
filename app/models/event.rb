class Event < ApplicationRecord
  COLORS = [
    "aquamarine",
    "darkslateblue",
    "deepskyblue",
    "darkviolet",
    "forestgreen",
    "lightcoral",
    "lightsalmon",
    "purple"
  ]

  # validations
  validates :title, length: {maximum: 30, message: "reminder title way too long" }

  # scopes
  scope :reminder_times, ->(start_date, end_date) { where("start_time >= ? AND end_time <= ?", start_date, end_date)}
  scope :aquamarine_color_code, -> { where(event_color: "aquamarine").order(created_at: :desc) }
  scope :darkslateblue_color_code, -> { where(event_color: "darkslateblue").order(created_at: :desc) }
  scope :deepskyblue_color_code, -> { where(event_color: "deepskyblue").order(created_at: :desc) }
  scope :darkviolet_color_code, -> { where(event_color: "darkviolet").order(created_at: :desc) }
  scope :forestgreen_color_code, -> { where(event_color: "forestgreen").order(created_at: :desc) }
  scope :lightcoral_color_code, -> { where(event_color: "lightcoral").order(created_at: :desc) }
  scope :lightsalmon_color_code, -> { where(event_color: "lightsalmon").order(created_at: :desc) }
  scope :purple_color_code, -> { where(event_color: "purple").order(created_at: :desc) }
  scope :total_past_reminders, -> { where("end_time < ?",  Time.now).count }
  scope :total_active_reminders, -> { where("start_time >= ? OR end_time >= ?", Time.now, Time.now).count }

  def self.total_reminders
    self.count
  end
end
