class CommentsController < ApplicationController
  
  def create
    @comment = current_user.comments.new(comment_params)
    @comment.save
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content, :recipe_id)
  end
end
