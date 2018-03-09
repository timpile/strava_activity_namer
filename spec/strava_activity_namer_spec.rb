RSpec.describe StravaActivityNamer do
  it "has a version number" do
    expect(StravaActivityNamer::VERSION).not_to be nil
  end

  it "generates a cool name" do
    expect(StravaActivityNamer::Namify.generate_name).to eql("Cool name!")
  end

  it "finds a Strava activity name" do
    expect(StravaActivityNamer::Namify.strava_activity_name).to eql("Happy Friday")
  end
end
