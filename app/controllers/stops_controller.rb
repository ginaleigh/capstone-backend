class StopsController < ApplicationController
  def index
    @stops = Stops.all
    render json: @stops.as_json
  end

  def show
    @stops = Stops.find(params[:id])
    render json: @stops.as_json
  end
end
