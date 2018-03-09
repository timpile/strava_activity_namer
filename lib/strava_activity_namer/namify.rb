require "strava_activity_namer/strava"

module StravaActivityNamer
  class Namify
    def self.generate_name
      "Cool name!"
    end

    def self.strava_activity_name
      Strava.activity["name"]
    end
  end
end
