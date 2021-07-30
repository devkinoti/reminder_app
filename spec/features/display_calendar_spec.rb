require "rails_helper"

describe "Viewing the dashboard" do
  it "shows the dashboard title" do 
    visit root_path

    expect(page).to have_text("Dashboard")
  end

  it "shows the total reminders" do
    event1 = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "forestgreen")

    event2 = Event.create(title: "Hackathon",
          all_day: true,
          start_time: Time.now,
          end_time: Time.now.end_of_day,
          event_color: "aquamarine")

    visit root_path

    expect(page).to have_text("2 reminders")
    expect(page).to have_text("All Reminders")
  end

  it "shows the total past reminders" do 
    event1 = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now.prev_month,
      end_time: Time.now.yesterday,
      event_color: "forestgreen")

    event2 = Event.create(title: "Hackathon",
          all_day: true,
          start_time:  Time.now.prev_month,
          end_time: Time.now.yesterday,
          event_color: "aquamarine")

    visit root_path

    expect(page).to have_text("2 reminders")
    expect(page).to have_text("Past Reminders")
  end

  it "shows the total active reminders" do
    event1 = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.tomorrow,
      event_color: "forestgreen")

    event2 = Event.create(title: "Hackathon",
          all_day: true,
          start_time:  Time.now,
          end_time: Time.now.next_month,
          event_color: "aquamarine")

    visit root_path

    expect(page).to have_text("2 reminders")
    expect(page).to have_text("Active Reminders")
  end

  it "shows the calendar title" do
    visit root_path

    expect(page).to have_text("Reminders Calendar View")
  end

end