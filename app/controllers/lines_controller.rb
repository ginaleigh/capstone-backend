class LinesController < ApplicationController
  def index
    @lines = Line.all
    render json: @lines.as_json
  end

  def show
    @lines = Line.find(params[:id])
    render json: @lines.as_json
  end

  p hey
end
