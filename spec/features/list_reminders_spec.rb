require "rails_helper"

describe "Viewing the list of reminders" do
  it "shows the event" do 
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
    event3 = Event.create(title: "Hackathon",
                          all_day: true,
                          start_time: Time.now,
                          end_time: Time.now.end_of_day,
                          event_color: "forestgreen")

    visit events_url

    expect(page).to have_text(event1.title)
    expect(page).to have_text(event2.title)
    expect(page).to have_text(event3.title)
  end

  it "displays the users name" do 
    visit events_url

    expect(page).to have_text("Hi, Chris")
  end

  it "shows the return to calendar button" do 
    visit events_url

    expect(page).to have_text("Return to Calendar")
  end

  it "shows the all reminders title" do 
    visit events_url

    expect(page).to have_text("All Your reminders")
  end
end