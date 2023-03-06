class IssuesController < ApplicationController
  def index
    # debugger
    issues = Issue.where(trail_id: params[:id])
    render json: issues
  end

  def create
    issue = Issue.create!(issue_params)
    render json: issue
  end

  def destroy
    issue = Issue.delete(params[:id])
    render json: issue
  end

  private

  def issue_params
    params.permit(:trail_id, :issue)
  end
end
