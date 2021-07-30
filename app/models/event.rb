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
end
