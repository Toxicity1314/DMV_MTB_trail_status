class TrailSystemsController < ApplicationController
  def show
    trail = TrailSystem.find(params[:id])
    render json: trail, include: %w[comments comments.user trails issues]
  end

  def index
    trails = TrailSystem.all.order(:name)
    render json: trails
  end
end
