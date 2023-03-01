class TrailSystemsController < ApplicationController
    def show
        trail = TrailSystem.find(params[:id])
        render json: trail
    end

    def index
        trails = TrailSystem.all
        render json: trails
    end
end
