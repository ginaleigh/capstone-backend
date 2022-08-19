class StopsController < ApplicationController
  def index
    @stops = Stop.all
    render json: @stops.as_json
  end

  def show
    @stops = Stop.find_by(parent_id: params[:parent_id])
    render json: @stops.as_json
  end

  def arrival_times
    response = HTTP.get("http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=#{Rails.application.credentials.cta_api[:api_key]}&mapid=#{params[:parent_id]}&outputType=JSON")
    data = JSON.parse(response)
    p data
    render json: data
  end
end
