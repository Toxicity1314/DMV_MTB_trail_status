class IssuesController < ApplicationController
  def index
    # debugger
    issues = Issue.where(trail_id: params[:id])
    render json: issues
  end

  def create
    issue = Issue.create(issue_params)
    if issue.valid?
      render json: issue, status: :created
    else
      render json: {
               errors: issue.errors.full_messages,
             },
             status: :unprocessable_entity
    end
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
