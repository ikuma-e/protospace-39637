class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :prototype, :user).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
  
end