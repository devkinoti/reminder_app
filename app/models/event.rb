class Event < ApplicationRecord
  validates :title, :start_time, :end_time, :event_color, presence: true
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
end
