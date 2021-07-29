date_format = "%Y-%m-%d %H:%M%z"
json.extract! reminder, :id, :title
json.url reminder_url(reminder, format: :json)
json.show_url reminder_url(reminder, format: :html)
json.start reminder.start_time.strftime(date_format)
json.end reminder.end_time.strftime(date_format)
json.allDay reminder.all_day
