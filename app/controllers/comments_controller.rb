class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    if comment.valid?
      render json: comment, status: :created
    else
      render json: {
               errors: comment.errors.full_messages,
             },
             status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.delete(params[:id])
    render json: comment
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    if comment.valid?
      render json: comment, status: :created
    else
      render json: {
               errors: comment.errors.full_messages,
             },
             status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.permit(:user_id, :trail_system_id, :comment)
  end
end
