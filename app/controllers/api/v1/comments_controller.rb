class Api::V1::CommentsController < ApplicationController

  def index
    if params[:user_id]
      user= User.find_by(id: params[:user_id])
      comments= user.comments.all
      render json: comments
    elsif params[:adventure_id]
      adventure= Adventure.find_by(id: params[:adventure_id])
      comments= adventure.comments.all
      render json: comments
    end
  end

  def create
    #only available as nested route under adventure
    comment= adventure.comments.build(comment_params)
    if comment.save
        render json: comment
      else
        render json: {error: 'Error Creating Comment'}
    end
  end

  def update
    #only available as nested route under adventure
    comment= Comment.find_by(id: params[:id])
    if comment
      comment.update(comment_params)
      user_id= comment.user_id
      user= User.find_by(id: user_id)
      render json: user
    else
      render json: {error: 'Error Updating Comment'}
    end
  end

  def destroy
    comment= Comment.find_by(id: params[:id])
    if comment
      comment.destroy
      render json: comment
    else
      render json: {error: 'Error Deleting Comment'}
    end
  end



  private

  def comment_params
    params.require(:comment).permit(:text, :user_id, :adventure_id)
  end
end
