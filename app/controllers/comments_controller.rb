class CommentsController < ApplicationController

  def destroy
    # @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    authorize @comment
    
    if @comment.destroy
      flash[:notice] = "Comment was removed."
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    # @topic = Topic.find(params[:topic_id])

    # @comment.post
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    authorize @comment
    if @comment.save
      redirect_to [@post.topic, @post], notice: "Success!"
    else
      redirect_to [@post.topic, @post], notice: "There was an error saving the comment. Please try again!"
    end
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end
