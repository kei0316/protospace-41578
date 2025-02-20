class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.prototype_id = params[:prototype_id]

    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      redirect_to prototype_path(@comment.prototype)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
