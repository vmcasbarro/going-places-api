# frozen_string_literal: true

require 'Darksky'

class DarkskyController < ApplicationController

  # PATCH /forecast
  def forecast
    @weather = Darksky.get_forecast(params[:lat], params[:long])
    render json: @weather
  end

end
