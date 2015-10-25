class CommentsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    authorize @comment
    if @comment.save
      redirect_to [@topic, @post], notice: "Success!"
    else
      redirect_to [@topic, @post], notice: "There was an error saving the comment. Please try again!"
  end

end

  def comment_params
    params.require(:comment).permit(:body)
  end
  
end
