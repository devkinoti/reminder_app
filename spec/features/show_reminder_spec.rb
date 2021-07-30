require "rails_helper"

describe "showing event" do
  it "show one event and its details" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "purple")
    visit event_path(event)

    expect(page).to have_text("Hackathon")
    expect(page).to have_text("All Day Reminder")
    expect(page).to have_text("purple")
  end
end