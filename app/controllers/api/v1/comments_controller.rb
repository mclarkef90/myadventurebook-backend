class Api::V1::CommentsController < ApplicationController

  def index
    if params[:user_id]
      user= User.find_by(id: params[:id])
      comments= user.comments.all
      render json: comments
    else params[:adventure_id]
      adventure= Adventure.find_by(id: params[:id])
      comments= adventure.comments.all
      render json: comments
    end
  end

  def create
    #only available as nested route under adventure
    adventure= Adventure.find_by(id: params[:id])
    comment= adventure.comment.build(comment_params)
    if comment.save
        render json: comment, status: :accepted
      else
        render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    comment= Comment.find_by(id: params[:id])
    if comment
      comment.update(comment_params)
      render json: comment, status: :accepted
    else
      render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    comment= Comment.find_by(id: params[:id])
    if comment
      comment.destroy
      render json: comment, status: :accepted
    else
      render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :user_id, :adventure_id)
  end
end
