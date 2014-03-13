require 'open-uri'

class LocationsController < ApplicationController
  def search
  end

  def results
    @origin = params[:origin]
    @destination = params[:destination]
    @url = URI.escape("http://maps.googleapis.com/maps/api/directions/json?origin=#{@origin}&destination=#{@destination}&sensor=false")
    @json_data = open(@url).read
    @data = JSON.parse(@json_data)["routes"].first["legs"].first["steps"]
  end

end
