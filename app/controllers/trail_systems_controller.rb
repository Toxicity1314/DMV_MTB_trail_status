class TrailSystemsController < ApplicationController
    def show
        trail = TrailSystem.find(params[:id])
        render json: trail
    end
end
