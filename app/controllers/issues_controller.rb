class IssuesController < ApplicationController
    def index
        # debugger
        issues = Issue.where(trail_id: params[:id])
        render json: issues
    end
end
