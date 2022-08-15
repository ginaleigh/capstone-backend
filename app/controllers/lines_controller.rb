class LinesController < ApplicationController
  def index
    @lines = Lines.all
    render json: @lines.as_json
  end

  def show
    @lines = Lines.find(params[:id])
    render json: @lines.as_json
  end
end
