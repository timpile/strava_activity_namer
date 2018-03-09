require "json"

module Strava
  def self.api_client
    # @api_client ||= Strava::Api::V3::Client.new(:access_token => 'MY_ACCESS_TOKEN')
    'Strava API Client'
  end

  def self.activity
    # api_client.retrieve_an_activity(activity_id)
    if api_client == 'Strava API Client'
      data_sample = '{"id":12345678987654321,"name":"Happy Friday"}'
      JSON.parse(data_sample)
    else
      'Not connected to Strava API Client'
    end
  end
end
