require "rails_helper"

describe "Navigating events" do
  it "allows navigation from detail page to all reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "forestgreen")

    visit event_path(event)

    click_link "Back to All Reminders"
    expect(current_path).to eq(events_path)
  end

  it "allows navigation from detail page to dashboard" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "forestgreen")

    visit event_path(event)

    click_link "Return to Calendar"
    expect(current_path).to eq(dashboard_path)
  end

  it "allows navigation from listing page to detail page" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "forestgreen")

    visit events_path

    click_link "View"
    expect(current_path).to eq(event_path(event))
  end

  it "allows navigation to all aquamarine reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "aquamarine")

    visit event_path(event)

    click_link "Aquamarine"
    expect(current_path).to eq(aquamarine_events_path)
  end

  it "allows navigation to all darkslateblue reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "darkslateblue")

    visit event_path(event)

    click_link "DarkSlateBlue"
    expect(current_path).to eq(darkslateblue_events_path)
  end

  it "allows navigation to all deepskyblue reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "deepskyblue")

    visit event_path(event)

    click_link "DeepSkyBlue"
    expect(current_path).to eq(deepskyblue_events_path)
  end

  it "allows navigation to all darkviolet reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "darkviolet")

    visit event_path(event)

    click_link "DarkViolet"
    expect(current_path).to eq(darkviolet_events_path)
  end

  it "allows navigation to all forestgreen reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "forestgreen")

    visit event_path(event)

    click_link "ForestGreen"
    expect(current_path).to eq(forestgreen_events_path)
  end

  it "allows navigation to all lightcoral reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "lightcoral")

    visit event_path(event)

    click_link "LightCoral"
    expect(current_path).to eq(lightcoral_events_path)
  end

  it "allows navigation to all lightsalmon reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "lightsalmon")

    visit event_path(event)

    click_link "LightSalmon"
    expect(current_path).to eq(lightsalmon_events_path)
  end

  it "allows navigation to all purple reminders" do
    event = Event.create(title: "Hackathon",
      all_day: true,
      start_time: Time.now,
      end_time: Time.now.end_of_day,
      event_color: "purple")

    visit event_path(event)

    click_link "Purple"
    expect(current_path).to eq(purple_events_path)
  end


end