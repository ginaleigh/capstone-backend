class StopsController < ApplicationController
  def index
    @stops = Stop.all
    render json: @stops.as_json
  end

  def show
    @stops = Stop.find(params[:id])
    render json: @stops.as_json
  end
end
