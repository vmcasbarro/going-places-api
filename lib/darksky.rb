require 'httparty'

class Darksky
  include HTTParty
  format :json

  base_uri 'https://api.darksky.net'

  attr_accessor :temp, :location, :icon, :desc, :url, :feel_like

  def initialize(response)
    @timezone = response['timezone']
    @currently = response['currently']
    @daily = response['daily']
    @hourly = response['hourly']
    @minutely = response['minutely']
  end

  def self.get_forecast(lat, long)
    response = get("/forecast/#{ENV["darksky_key"]}/#{lat},#{long}")
    if response.success?
      new(response)
    else
      raise response.response
    end
  end

end
