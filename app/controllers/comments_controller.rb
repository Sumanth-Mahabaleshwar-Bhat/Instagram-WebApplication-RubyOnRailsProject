class CommentsController < ApplicationController
  before_action :set_post, only: [:create, :destroy]

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to @post, notice: 'Comment successfully added !!'
    else
      redirect_to @post, alert: 'Unable to add comment for the post !!'
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post, notice: 'Comment has been successfully deleted !!'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:post_id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:comment_text)
  end
end
